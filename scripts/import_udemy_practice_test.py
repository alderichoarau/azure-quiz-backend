#!/usr/bin/env python3
"""Imports a Udemy AZ-104 practice test (scraped separately into a JSON file, see INPUT FORMAT
below) into a running backend via the Admin API -- same code path as the admin UI
(POST /api/admin/modules/{moduleId}/questions, multipart: JSON "data" part + ordered "images"
parts, images referenced by index from contentBlocks).

Deliberately NOT a Flyway migration, unlike scripts/generate_az104_content_migrations.py: that
script's own docstring explains why its predecessor (a live-API importer, same shape as this one)
was retired in favor of migrations for *text-only* content -- baked-in beats a manual run for
content with no images. But mock exams with images never got that treatment (this repo's own
README: "Not used for image-heavy content like mock exams, which go through the admin UI
instead") because a migration has no Blob Storage upload step. This script is that admin-UI path,
just scripted instead of clicked through by hand -- same persistence guarantee as every other
mock exam already in prod's database (survives redeploys, does NOT survive a full DB recreate;
back that case up separately -- see BACKING UP below).

BACKING UP: a Postgres-only dump (e.g. via DBeaver) is NOT enough to preserve these questions.
question_content_block only stores an opaque blob reference ("question-images/{blockId}") --
the actual image bytes live in the Storage Account's "question-images" Blob container, uploaded
by QuestionImageStorageService, separate from Postgres entirely. Restoring a DB-only dump
elsewhere (e.g. onto nonprod) gives you rows pointing at blobs that don't exist there. Back up
both, and restore both together:

    # find the Storage Account name for a given owner/environment (same tag lookup the CI
    # workflows already use, e.g. finops-postgres-schedule.yml)
    STORAGE_ACCOUNT=$(az resource list \\
        --query "[?type=='Microsoft.Storage/storageAccounts' && tags.owner=='<owner>' && tags.environment=='prod'].name | [0]" \\
        -o tsv)

    # download every blob in the question-images container to a local folder
    az storage blob download-batch \\
        --account-name "$STORAGE_ACCOUNT" --auth-mode login \\
        --source question-images --destination ./question-images-backup

    # ...and re-upload to another environment's Storage Account when copying content over
    az storage blob upload-batch \\
        --account-name "$TARGET_STORAGE_ACCOUNT" --auth-mode login \\
        --destination question-images --source ./question-images-backup

Stdlib-only (urllib + a hand-rolled multipart encoder), same convention as
generate_az104_content_migrations.py -- no extra dependency (e.g. requests) to install first.

INPUT FORMAT (--input, a JSON file):
{
  "questions": [
    {
      "type": "SINGLE_CHOICE" | "MULTIPLE_CHOICE" | "TRUE_FALSE",
      "explanation": "optional, may be empty/omitted",
      "options": [{"label": "...", "correct": true}, ...],
      "blocks": [
        {"type": "TEXT", "text": "..."},
        {"type": "IMAGE", "path": "local/path/to/screenshot.png"}
      ]
    },
    ...
  ]
}
"blocks" preserves display order; a TEXT block needs "text", an IMAGE block needs "path" (resolved
relative to --images-dir if not absolute). This script fills in each IMAGE block's imageIndex and
builds the ordered "images" multipart parts itself -- the input JSON never deals with indices.

Usage:
    python3 scripts/import_udemy_practice_test.py \\
        --base-url https://app-java-alderic-hoarau-quiz-prod-tf.azurewebsites.net \\
        --api-key "$BACKEND_API_KEY" \\
        --admin-key "$ADMIN_API_KEY" \\
        --certification-code AZ-104 \\
        --module-code udemy-practice-test-1 \\
        --module-title "Udemy - Practice Test 1" \\
        --input /path/to/practice-test-1.json \\
        --images-dir /path/to/images

    Add --dry-run to validate the input and print what would be sent, without calling the API.
"""

from __future__ import annotations

import argparse
import json
import mimetypes
import sys
import urllib.error
import urllib.request
import uuid
from pathlib import Path


def http_get(base_url: str, path: str, api_key: str) -> object:
    req = urllib.request.Request(f"{base_url}{path}", headers={"X-Api-Key": api_key})
    with urllib.request.urlopen(req, timeout=30) as resp:
        return json.loads(resp.read())


def http_post_json(base_url: str, path: str, api_key: str, admin_key: str, body: dict) -> object:
    data = json.dumps(body).encode()
    req = urllib.request.Request(
        f"{base_url}{path}",
        data=data,
        method="POST",
        headers={
            "X-Api-Key": api_key,
            "X-Admin-Key": admin_key,
            "Content-Type": "application/json",
        },
    )
    try:
        with urllib.request.urlopen(req, timeout=30) as resp:
            return json.loads(resp.read())
    except urllib.error.HTTPError as e:
        raise SystemExit(f"POST {path} failed ({e.code}): {e.read().decode(errors='replace')}")


def encode_multipart(data_json: str, image_paths: list[Path]) -> tuple[bytes, str]:
    boundary = uuid.uuid4().hex
    parts: list[bytes] = []

    parts.append(
        f'--{boundary}\r\n'
        f'Content-Disposition: form-data; name="data"\r\n'
        f'Content-Type: application/json\r\n\r\n'
        f'{data_json}\r\n'.encode()
    )

    for path in image_paths:
        content_type = mimetypes.guess_type(path.name)[0] or "application/octet-stream"
        parts.append(
            f'--{boundary}\r\n'
            f'Content-Disposition: form-data; name="images"; filename="{path.name}"\r\n'
            f'Content-Type: {content_type}\r\n\r\n'.encode()
            + path.read_bytes()
            + b"\r\n"
        )

    parts.append(f"--{boundary}--\r\n".encode())
    body = b"".join(parts)
    return body, f"multipart/form-data; boundary={boundary}"


def http_post_multipart(base_url: str, path: str, api_key: str, admin_key: str, data_json: str, image_paths: list[Path]) -> object:
    body, content_type = encode_multipart(data_json, image_paths)
    req = urllib.request.Request(
        f"{base_url}{path}",
        data=body,
        method="POST",
        headers={
            "X-Api-Key": api_key,
            "X-Admin-Key": admin_key,
            "Content-Type": content_type,
        },
    )
    try:
        with urllib.request.urlopen(req, timeout=60) as resp:
            return json.loads(resp.read())
    except urllib.error.HTTPError as e:
        raise SystemExit(f"POST {path} failed ({e.code}): {e.read().decode(errors='replace')}")


def resolve_certification_id(base_url: str, api_key: str, code: str) -> str:
    for cert in http_get(base_url, "/api/certifications", api_key):
        if cert["code"] == code:
            return cert["id"]
    raise SystemExit(f"No certification with code {code!r} found at {base_url}")


def resolve_or_create_module(
    base_url: str, api_key: str, admin_key: str, certification_id: str, code: str, title: str, dry_run: bool
) -> str:
    for module in http_get(base_url, f"/api/certifications/{certification_id}/modules", api_key):
        if module["code"] == code:
            print(f"Reusing existing module {code!r} ({module['id']})")
            return module["id"]

    if dry_run:
        print(f"[dry-run] would create module {code!r} ({title!r}) under certification {certification_id}")
        return "00000000-0000-0000-0000-000000000000"

    module = http_post_json(
        base_url,
        f"/api/admin/certifications/{certification_id}/modules",
        api_key,
        admin_key,
        {"code": code, "title": title, "description": None, "position": None, "type": "MOCK_EXAM"},
    )
    print(f"Created module {code!r} ({module['id']})")
    return module["id"]


def build_question_payload(question: dict, images_dir: Path) -> tuple[dict, list[Path]]:
    content_blocks = []
    image_paths: list[Path] = []
    for block in question["blocks"]:
        if block["type"] == "TEXT":
            content_blocks.append({"type": "TEXT", "text": block["text"], "imageIndex": None})
        elif block["type"] == "IMAGE":
            path = Path(block["path"])
            if not path.is_absolute():
                path = images_dir / path
            if not path.is_file():
                raise SystemExit(f"Image not found: {path}")
            content_blocks.append({"type": "IMAGE", "text": None, "imageIndex": len(image_paths)})
            image_paths.append(path)
        else:
            raise SystemExit(f"Unknown block type: {block['type']!r}")

    data = {
        "type": question["type"],
        "explanation": question.get("explanation") or None,
        "options": question["options"],
        "contentBlocks": content_blocks,
    }
    return data, image_paths


def import_question(
    base_url: str, api_key: str, admin_key: str, module_id: str, question: dict, images_dir: Path, dry_run: bool
) -> None:
    data, image_paths = build_question_payload(question, images_dir)

    if dry_run:
        preview = next((b["text"] for b in data["contentBlocks"] if b["type"] == "TEXT"), "")[:60]
        print(f"[dry-run] would POST question ({len(image_paths)} image(s)): {preview!r}...")
        return

    result = http_post_multipart(
        base_url, f"/api/admin/modules/{module_id}/questions", api_key, admin_key, json.dumps(data), image_paths
    )
    print(f"Created question {result['questionId']}")


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument("--base-url", required=True, help="Backend base URL, e.g. https://app-java-....azurewebsites.net")
    parser.add_argument("--api-key", required=True, help="X-Api-Key (BACKEND_API_KEY)")
    parser.add_argument("--admin-key", required=True, help="X-Admin-Key (ADMIN_API_KEY)")
    parser.add_argument("--certification-code", default="AZ-104")
    parser.add_argument("--module-code", required=True, help="e.g. udemy-practice-test-1 (created if it doesn't exist yet)")
    parser.add_argument("--module-title", required=True, help="e.g. 'Udemy - Practice Test 1'")
    parser.add_argument("--input", required=True, type=Path, help="Path to the scraped questions JSON")
    parser.add_argument("--images-dir", type=Path, default=Path("."), help="Base dir for relative image paths in --input")
    parser.add_argument("--start-at", type=int, default=1, help="1-based question index to resume from (skips earlier ones, e.g. after a partial failure)")
    parser.add_argument("--dry-run", action="store_true")
    args = parser.parse_args()

    payload = json.loads(args.input.read_text())
    questions = payload["questions"][args.start_at - 1 :]
    print(f"Loaded {len(questions)} question(s) from {args.input} (starting at #{args.start_at})")

    certification_id = resolve_certification_id(args.base_url, args.api_key, args.certification_code)
    module_id = resolve_or_create_module(
        args.base_url, args.api_key, args.admin_key, certification_id, args.module_code, args.module_title, args.dry_run
    )

    for i, question in enumerate(questions, start=1):
        print(f"[{i}/{len(questions)}]", end=" ")
        import_question(args.base_url, args.api_key, args.admin_key, module_id, question, args.images_dir, args.dry_run)

    print("Done." if not args.dry_run else "Dry run complete, nothing was sent.")


if __name__ == "__main__":
    main()
