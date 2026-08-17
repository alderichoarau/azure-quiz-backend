#!/usr/bin/env python3
"""Imports AZ-104 "Review Questions" content into azure-quiz-backend via the admin API.

Covers the four topic areas whose source is a plain-text Q&A pair (no images): Compute,
Identities & Governance, Storage, Virtual Networks. The mock-exam docs are deliberately NOT
handled here — they're image-heavy and meant to be authored through the in-app admin UI instead
(see /admin in the frontend).

Usage:
    python3 scripts/import_az104_review_questions.py \\
        --docx-dir "/path/to/AZ-104_Questions" \\
        --api-base http://localhost:8080/api \\
        --admin-key ""

`--admin-key` may be omitted for local dev (the backend's AdminApiKeyFilter is a no-op when
ADMIN_API_KEY is unset). Add --dry-run to parse/validate/shuffle and print a report without
calling the API at all — always run this first.

---

Design note — why every question's options get reshuffled before import
==========================================================================
The source .docx files put the correct answer at a heavily skewed, sometimes literally fixed
position. Verified by scanning all four answer keys before writing this script:

    Compute................ 75/75 questions correct = A   (100%)
    Storage................ 58/60 questions correct = A   (96.7%)
    Identities&Governance..  66/90 correct = B, 12 = A, 12 = C, 0 = D
    VirtualNetworks........ 61/120 = A, 55/120 = B, 4/120 = C, 0 = D

D is the correct answer in exactly zero questions across all four files. Importing the options
in source order would let a student ace these modules by learning "pick A" (or "avoid D")
instead of the actual material — precisely the failure mode flagged when this script was
requested. Every question's four options are therefore given a fresh random order at import
time, with a hard rule (see `assign_correct_positions`) forbidding the correct answer from
landing in the same position three questions in a row within a module. The `correct` flag is
re-derived from the shuffle, not from the source document's ordering.

---

Parsing approach
=================
Both the "Questions" and "AnswerKey" docs share one paragraph-per-line structure (confirmed by
checking that each file's total line count exactly matches header-lines + module-header-lines +
one line per question/option/answer/explanation — i.e. no field ever wraps across two
paragraphs). Extracted via the stdlib only (zipfile + ElementTree over word/document.xml) since
neither pandoc nor python-docx is available in this environment.

The Questions file supplies the question text + 4 options (source order, labelled A-D). The
AnswerKey file supplies, per question, which of those 4 was correct plus the explanation. The
two are cross-validated against each other (matching question text, and the AnswerKey's quoted
"correct" text found verbatim among that question's 4 options) — a mismatch aborts the import
for that module rather than silently importing something wrong.
"""

from __future__ import annotations

import argparse
import json
import random
import re
import sys
import urllib.error
import urllib.request
import zipfile
import xml.etree.ElementTree as ET
from dataclasses import dataclass, field
from pathlib import Path

W = "{http://schemas.openxmlformats.org/wordprocessingml/2006/main}"

# (module_code, module_title, questions_filename, answerkey_filename)
MODULES = [
    (
        "module-01-compute",
        "Module 1 - Deploy and Manage Azure Compute Resources",
        "AZ104_Questions_Review_Compute_EN.docx",
        "AZ104_AnswerKey_Review_Compute_EN.docx",
    ),
    (
        "module-02-identities-governance",
        "Module 2 - Manage Identities and Governance in Azure",
        "AZ104_Questions_Review_Identities_Governance_EN.docx",
        "AZ104_AnswerKey_Review_Identities_Governance_EN.docx",
    ),
    (
        "module-03-storage",
        "Module 3 - Implement and Manage Storage",
        "AZ104_Questions_Review_Storage_EN.docx",
        "AZ104_AnswerKey_Review_Storage_EN.docx",
    ),
    (
        "module-04-virtual-networks",
        "Module 4 - Configure and Manage Virtual Networks",
        "AZ104_Questions_Review_VirtualNetworks_EN.docx",
        "AZ104_AnswerKey_Review_VirtualNetworks_EN.docx",
    ),
]

CERTIFICATION_CODE = "AZ-104"
CERTIFICATION_TITLE = "Azure Administrator"
CERTIFICATION_DESCRIPTION = "Manage Azure identities, governance, storage, compute, and networking resources."


# --------------------------------------------------------------------------------------
# docx -> plain text (stdlib only)
# --------------------------------------------------------------------------------------
def docx_paragraphs(path: Path) -> list[str]:
    with zipfile.ZipFile(path) as z, z.open("word/document.xml") as f:
        tree = ET.parse(f)
    body = tree.getroot().find(f"{W}body")
    lines = []
    for p in body.iter(f"{W}p"):
        text = "".join(t.text or "" for t in p.iter(f"{W}t"))
        lines.append(text)
    return lines


# --------------------------------------------------------------------------------------
# Parsing
# --------------------------------------------------------------------------------------
@dataclass
class ParsedQuestion:
    number: int
    text: str
    options: list[str] = field(default_factory=list)  # source order, A..D


@dataclass
class ParsedAnswer:
    number: int
    text: str
    correct_letter: str
    correct_text: str
    explanation: str


QUESTION_HEADER_RE = re.compile(r"^\s*Question\s+(\d+)\s*$")
OPTION_RE = re.compile(r"^\s*([A-D])\.\s+(.*\S)\s*$")
YOUR_ANSWER_RE = re.compile(r"^\s*Your answer\s*:")
MODULE_HEADER_RE = re.compile(r"^\s*Module\s+\d+\s*[:–—-]")

ANSWER_Q_RE = re.compile(r"^\s*Q(\d+)\.\s+(.*\S)\s*$")
ANSWER_CORRECT_RE = re.compile(r"^\s*✓\s*Correct answer:\s*([A-D])\.\s+(.*\S)\s*$")


def parse_questions(lines: list[str]) -> list[ParsedQuestion]:
    questions: list[ParsedQuestion] = []
    i = 0
    n = len(lines)
    while i < n:
        m = QUESTION_HEADER_RE.match(lines[i])
        if not m:
            i += 1
            continue
        number = int(m.group(1))
        i += 1
        text = lines[i].strip()
        i += 1
        options = []
        while i < n and OPTION_RE.match(lines[i]):
            om = OPTION_RE.match(lines[i])
            options.append(om.group(2).strip())
            i += 1
        if len(options) != 4:
            raise ValueError(f"Question {number}: expected 4 options, found {len(options)}")
        if i < n and YOUR_ANSWER_RE.match(lines[i]):
            i += 1
        questions.append(ParsedQuestion(number=number, text=text, options=options))
    return questions


def parse_answer_key(lines: list[str]) -> list[ParsedAnswer]:
    answers: list[ParsedAnswer] = []
    i = 0
    n = len(lines)
    while i < n:
        m = ANSWER_Q_RE.match(lines[i])
        if not m:
            i += 1
            continue
        number = int(m.group(1))
        text = m.group(2).strip()
        i += 1
        cm = ANSWER_CORRECT_RE.match(lines[i])
        if not cm:
            raise ValueError(f"AnswerKey Q{number}: expected a 'Correct answer:' line, got: {lines[i]!r}")
        correct_letter, correct_text = cm.group(1), cm.group(2).strip()
        i += 1
        explanation = lines[i].strip()
        i += 1
        answers.append(
            ParsedAnswer(
                number=number,
                text=text,
                correct_letter=correct_letter,
                correct_text=correct_text,
                explanation=explanation,
            )
        )
    return answers


@dataclass
class Question:
    number: int
    statement: str
    options: list[str]  # source order A..D
    correct_index: int  # 0-based index into options
    explanation: str


def build_and_validate(questions_path: Path, answers_path: Path) -> list[Question]:
    q_lines = docx_paragraphs(questions_path)
    a_lines = docx_paragraphs(answers_path)
    parsed_questions = parse_questions(q_lines)
    parsed_answers = parse_answer_key(a_lines)

    if len(parsed_questions) != len(parsed_answers):
        raise ValueError(
            f"{questions_path.name}: {len(parsed_questions)} questions vs "
            f"{answers_path.name}: {len(parsed_answers)} answers"
        )

    # Matched by position in the document, NOT by the printed "Question N" / "QN." number:
    # Storage and VirtualNetworks restart that number at 1 for every Microsoft Learn
    # sub-module (verified — e.g. Storage has four separate "Q1"s), so it's not a safe join
    # key. Both files present the same questions in the same order, so zipping by position
    # and cross-checking the question text (a much stronger check anyway) is what's reliable.
    result: list[Question] = []
    for idx, (pq, pa) in enumerate(zip(parsed_questions, parsed_answers), start=1):
        if pa.text != pq.text:
            raise ValueError(
                f"Item #{idx} (questions doc: Q{pq.number}, answer key: Q{pa.number}): "
                f"text mismatch between question and answer key doc\n"
                f"  questions: {pq.text!r}\n  answerkey: {pa.text!r}"
            )
        if pa.correct_text not in pq.options:
            raise ValueError(
                f"Item #{idx} ({pq.text!r}): answer key's correct text not found among the "
                f"question's 4 options\n  correct_text: {pa.correct_text!r}\n  options: {pq.options!r}"
            )
        correct_index = pq.options.index(pa.correct_text)
        result.append(
            Question(
                number=idx,
                statement=pq.text,
                options=pq.options,
                correct_index=correct_index,
                explanation=pa.explanation,
            )
        )
    return result


# --------------------------------------------------------------------------------------
# De-biasing: reshuffle each question's options, capping consecutive same-position runs
# --------------------------------------------------------------------------------------
def assign_correct_positions(count: int, num_options: int = 4, max_run: int = 2, rng: random.Random = random) -> list[int]:
    """Returns a list of `count` target positions (0-based) for the correct answer, such that
    no value repeats more than `max_run` times in a row. Not globally uniform by design — the
    constraint intentionally breaks up streaks — but every position is used roughly equally
    over any real-size question set."""
    positions: list[int] = []
    for _ in range(count):
        candidates = list(range(num_options))
        if len(positions) >= max_run and len(set(positions[-max_run:])) == 1:
            candidates.remove(positions[-1])
        positions.append(rng.choice(candidates))
    return positions


def reshuffle_options(questions: list[Question], rng: random.Random = random) -> list[Question]:
    target_positions = assign_correct_positions(len(questions), rng=rng)
    reshuffled = []
    for q, target in zip(questions, target_positions):
        correct_text = q.options[q.correct_index]
        distractors = [opt for i, opt in enumerate(q.options) if i != q.correct_index]
        rng.shuffle(distractors)
        new_options = distractors[:target] + [correct_text] + distractors[target:]
        assert len(new_options) == 4
        reshuffled.append(
            Question(
                number=q.number,
                statement=q.statement,
                options=new_options,
                correct_index=target,
                explanation=q.explanation,
            )
        )
    return reshuffled


def longest_run(positions: list[int]) -> int:
    best = cur = 1
    for i in range(1, len(positions)):
        cur = cur + 1 if positions[i] == positions[i - 1] else 1
        best = max(best, cur)
    return best


# --------------------------------------------------------------------------------------
# Admin API client
# --------------------------------------------------------------------------------------
class AdminApi:
    def __init__(self, api_base: str, admin_key: str, dry_run: bool):
        self.api_base = api_base.rstrip("/")
        self.admin_key = admin_key
        self.dry_run = dry_run

    def _request(self, method: str, path: str, body: dict | None = None):
        url = f"{self.api_base}{path}"
        data = json.dumps(body).encode("utf-8") if body is not None else None
        req = urllib.request.Request(url, data=data, method=method)
        req.add_header("Content-Type", "application/json")
        if self.admin_key:
            req.add_header("X-Admin-Key", self.admin_key)
        try:
            with urllib.request.urlopen(req) as resp:
                raw = resp.read()
                return json.loads(raw) if raw else None
        except urllib.error.HTTPError as e:
            detail = e.read().decode("utf-8", errors="replace")
            raise RuntimeError(f"{method} {url} -> HTTP {e.code}: {detail}") from e

    def get_json(self, path: str):
        req = urllib.request.Request(f"{self.api_base}{path}", method="GET")
        if self.admin_key:
            req.add_header("X-Admin-Key", self.admin_key)
        with urllib.request.urlopen(req) as resp:
            return json.loads(resp.read())

    def get_or_create_certification(self) -> tuple[str, list[dict]]:
        certifications = self.get_json("/certifications")
        existing = next((c for c in certifications if c["code"] == CERTIFICATION_CODE), None)
        if existing:
            print(f"[cert] {CERTIFICATION_CODE} already exists (id={existing['id']})")
            modules = self.get_json(f"/certifications/{existing['id']}/modules")
            return existing["id"], modules
        if self.dry_run:
            print(f"[dry-run] would create certification {CERTIFICATION_CODE}")
            return "DRY-RUN-CERT-ID", []
        created = self._request(
            "POST",
            "/admin/certifications",
            {"code": CERTIFICATION_CODE, "title": CERTIFICATION_TITLE, "description": CERTIFICATION_DESCRIPTION},
        )
        print(f"[cert] created {CERTIFICATION_CODE} (id={created['id']})")
        return created["id"], []

    def get_or_create_module(self, certification_id: str, existing_modules: list[dict], code: str, title: str, position: int):
        existing = next((m for m in existing_modules if m["code"] == code), None)
        if existing:
            return existing["id"], existing.get("questionCount", 0)
        if self.dry_run:
            print(f"[dry-run] would create module {code!r} ({title})")
            return f"DRY-RUN-{code}", 0
        created = self._request(
            "POST",
            f"/admin/certifications/{certification_id}/modules",
            {"code": code, "title": title, "description": None, "position": position, "type": "CONTENT"},
        )
        print(f"[module] created {code} (id={created['id']})")
        return created["id"], 0

    def create_question(self, module_id: str, q: Question):
        payload = {
            "type": "SINGLE_CHOICE",
            "explanation": q.explanation,
            "options": [{"label": opt, "correct": i == q.correct_index} for i, opt in enumerate(q.options)],
            "contentBlocks": [{"type": "TEXT", "text": q.statement}],
        }
        if self.dry_run:
            return
        # Admin question create/update is multipart (data + optional image parts); build it by
        # hand since urllib has no multipart helper and we're deliberately stdlib-only here.
        boundary = "----az104importboundary"
        body = (
            f"--{boundary}\r\n"
            f'Content-Disposition: form-data; name="data"\r\n'
            f"Content-Type: application/json\r\n\r\n"
            f"{json.dumps(payload)}\r\n"
            f"--{boundary}--\r\n"
        ).encode("utf-8")
        req = urllib.request.Request(
            f"{self.api_base}/admin/modules/{module_id}/questions", data=body, method="POST"
        )
        req.add_header("Content-Type", f"multipart/form-data; boundary={boundary}")
        if self.admin_key:
            req.add_header("X-Admin-Key", self.admin_key)
        try:
            with urllib.request.urlopen(req) as resp:
                resp.read()
        except urllib.error.HTTPError as e:
            detail = e.read().decode("utf-8", errors="replace")
            raise RuntimeError(f"create question {q.number} in module {module_id} -> HTTP {e.code}: {detail}") from e


# --------------------------------------------------------------------------------------
# Main
# --------------------------------------------------------------------------------------
def main():
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument("--docx-dir", required=True, type=Path, help="Folder containing the AZ-104_Questions .docx files")
    parser.add_argument("--api-base", default="http://localhost:8080/api")
    parser.add_argument("--admin-key", default="")
    parser.add_argument("--dry-run", action="store_true", help="Parse/validate/shuffle and report, without calling the API")
    parser.add_argument("--seed", type=int, default=None, help="Random seed, for reproducible shuffles")
    args = parser.parse_args()

    rng = random.Random(args.seed) if args.seed is not None else random.Random()
    api = AdminApi(args.api_base, args.admin_key, args.dry_run)

    all_modules_data = []
    for code, title, q_filename, a_filename in MODULES:
        q_path = args.docx_dir / q_filename
        a_path = args.docx_dir / a_filename
        if not q_path.exists() or not a_path.exists():
            print(f"!! Missing file(s) for {code}: {q_path.name} / {a_path.name}", file=sys.stderr)
            sys.exit(1)

        questions = build_and_validate(q_path, a_path)
        before_positions = [q.correct_index for q in questions]
        before_counts = [before_positions.count(i) for i in range(4)]

        reshuffled = reshuffle_options(questions, rng=rng)
        after_positions = [q.correct_index for q in reshuffled]
        after_counts = [after_positions.count(i) for i in range(4)]

        print(f"\n=== {title} ({len(questions)} questions) ===")
        print(f"  correct-position counts before shuffle (A/B/C/D): {before_counts}  longest run: {longest_run(before_positions)}")
        print(f"  correct-position counts after  shuffle (A/B/C/D): {after_counts}  longest run: {longest_run(after_positions)}")
        assert longest_run(after_positions) <= 2, "shuffle invariant violated"

        all_modules_data.append((code, title, reshuffled))

    if args.dry_run:
        print("\n[dry-run] validation + shuffle OK for all modules, no API calls made.")
        return

    certification_id, existing_modules = api.get_or_create_certification()

    for position, (code, title, questions) in enumerate(all_modules_data, start=1):
        module_id, existing_count = api.get_or_create_module(certification_id, existing_modules, code, title, position)
        if existing_count > 0:
            print(f"[module] {code} already has {existing_count} question(s) — skipping import to avoid duplicates")
            continue
        for q in questions:
            api.create_question(module_id, q)
        print(f"[module] {code}: imported {len(questions)} questions")

    print("\nDone.")


if __name__ == "__main__":
    main()
