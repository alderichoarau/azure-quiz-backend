#!/usr/bin/env python3
"""Generates Flyway SQL migrations for AZ-104 "Review Questions" and "Practice Exam" content,
so it's present on every environment automatically (docker-compose up, any deploy target) instead
of requiring a manual post-deploy run against a live backend (the superseded approach taken by
this script's predecessor, scripts/import_az104_review_questions.py, removed once these migrations
replaced it -- see git history for that script if the original live-API-import logic is needed).

One module = one migration file, following this repo's existing convention (V9-V14, one file per
AZ-900 mock exam variant). Mirrors V2-V7's SQL shape exactly (literal pre-generated UUIDs, no
question_content_block use -- these are pure-text questions, same as every existing AZ-900 seed).

Reuses that predecessor script's parsing/validation/de-biasing logic (same source format),
generalized for two format quirks found while covering the fuller file set:
  - the answer key's "Correct answer: X" line doesn't always restate the option text (Monitoring:
    never; ComplementaryTopics PracticeExam: about half) -- the correct option is then looked up
    by letter index into the question's own 4 options instead of being text-matched.
  - the French combined doc (one file, no separate AnswerKey) has no "Correct answer:" label at
    all ("✓ B. ...", not "✓ Correct answer: B. ...") and a questions/answers split partway through
    the same paragraph list rather than two separate files.

Usage:
    python3 scripts/generate_az104_content_migrations.py \\
        --docx-dir "/path/to/AZ-104_Questions" \\
        --out-dir src/main/resources/db/migration \\
        --start-version 18 \\
        --seed 104          # reproducible shuffle; omit for a fresh random one

    Add --dry-run to parse/validate/shuffle and print a report without writing any files.
"""

from __future__ import annotations

import argparse
import re
import random
import sys
import uuid
import zipfile
import xml.etree.ElementTree as ET
from dataclasses import dataclass, field
from pathlib import Path

W = "{http://schemas.openxmlformats.org/wordprocessingml/2006/main}"
CERTIFICATION_ID = "00000000-0000-0000-0000-000000000002"
CERTIFICATION_CODE = "AZ-104"
CERTIFICATION_TITLE = "Azure Administrator"
CERTIFICATION_DESCRIPTION = "Manage Azure identities, governance, storage, compute, and networking resources."

# --------------------------------------------------------------------------------------
# Source -> module mapping
# --------------------------------------------------------------------------------------
# (module_code, module_title, module_description, questions_filename, answerkey_filename)
REVIEW_MODULES = [
    ("module-01-compute", "Module 1 - Deploy and Manage Azure Compute Resources",
     "AZ104_Questions_Review_Compute_EN.docx", "AZ104_AnswerKey_Review_Compute_EN.docx"),
    ("module-02-identities-governance", "Module 2 - Manage Identities and Governance in Azure",
     "AZ104_Questions_Review_Identities_Governance_EN.docx", "AZ104_AnswerKey_Review_Identities_Governance_EN.docx"),
    ("module-03-storage", "Module 3 - Implement and Manage Storage",
     "AZ104_Questions_Review_Storage_EN.docx", "AZ104_AnswerKey_Review_Storage_EN.docx"),
    ("module-04-virtual-networks", "Module 4 - Configure and Manage Virtual Networks",
     "AZ104_Questions_Review_VirtualNetworks_EN.docx", "AZ104_AnswerKey_Review_VirtualNetworks_EN.docx"),
    ("module-05-monitoring", "Module 5 - Monitor and Back Up Azure Resources",
     "AZ104_Questions_Review_Monitoring_EN.docx", "AZ104_AnswerKey_Review_Monitoring_EN.docx"),
    ("module-06-complementary-topics", "Module 6 - Complementary Topics",
     "AZ104_Questions_Review_ComplementaryTopics_EN.docx", "AZ104_AnswerKey_Review_ComplementaryTopics_EN.docx"),
]

PRACTICE_MODULES = [
    ("module-01-compute-practice", "Module 1 (Practice Scenarios) - Deploy and Manage Azure Compute Resources",
     "AZ104_PracticeExam_Compute_EN.docx", "AZ104_AnswerKey_PracticeExam_Compute_EN.docx"),
    ("module-02-identities-governance-practice", "Module 2 (Practice Scenarios) - Manage Identities and Governance in Azure",
     "AZ104_PracticeExam_Identities_Governance_EN.docx", "AZ104_AnswerKey_PracticeExam_Identities_Governance_EN.docx"),
    ("module-03-storage-practice", "Module 3 (Practice Scenarios) - Implement and Manage Storage",
     "AZ104_PracticeExam_Storage_EN.docx", "AZ104_AnswerKey_PracticeExam_Storage_EN.docx"),
    ("module-04-virtual-networks-practice", "Module 4 (Practice Scenarios) - Configure and Manage Virtual Networks",
     "AZ104_PracticeExam_VirtualNetworks_EN.docx", "AZ104_AnswerKey_PracticeExam_VirtualNetworks_EN.docx"),
    ("module-05-monitoring-practice", "Module 5 (Practice Scenarios) - Monitor and Back Up Azure Resources",
     "AZ104_PracticeExam_Monitoring_EN.docx", "AZ104_AnswerKey_PracticeExam_Monitoring_EN.docx"),
    ("module-06-complementary-topics-practice", "Module 6 (Practice Scenarios) - Complementary Topics",
     "AZ104_PracticeExam_ComplementaryTopics_EN.docx", "AZ104_AnswerKey_PracticeExam_ComplementaryTopics_EN.docx"),
]

# Single combined doc (questions then answers in one file) -- handled separately below.
FRENCH_REVISION_MODULE = (
    "module-02-identities-governance-revision-fr",
    "Module 2 (FR) - Révision : Identités et gouvernance",
    "AZ104_Questions_Revision_Identites_Gouvernance.docx",
)

ALL_FILENAMES_TO_SKIP_WARNING = {
    "AZ104_Examen_Blanc_Identites_Gouvernance.docx",  # mock exam, explicitly out of scope
    "AZ104_Ressources_Videos_YouTube_FR.docx",  # not questions
}


# --------------------------------------------------------------------------------------
# docx -> plain text (stdlib only, same approach as the predecessor script -- see module docstring)
# --------------------------------------------------------------------------------------
def docx_paragraphs(path: Path) -> list[str]:
    with zipfile.ZipFile(path) as z, z.open("word/document.xml") as f:
        tree = ET.parse(f)
    body = tree.getroot().find(f"{W}body")
    return ["".join(t.text or "" for t in p.iter(f"{W}t")) for p in body.iter(f"{W}p")]


# --------------------------------------------------------------------------------------
# Parsing
# --------------------------------------------------------------------------------------
@dataclass
class ParsedQuestion:
    number: int
    text: str
    options: list[str] = field(default_factory=list)


@dataclass
class ParsedAnswer:
    number: int
    text: str
    correct_letter: str
    correct_text: str | None  # None when the source only gives the letter, no restated text
    explanation: str


QUESTION_HEADER_RE = re.compile(r"^\s*Question\s+(\d+)\s*$")
OPTION_RE = re.compile(r"^\s*([A-D])\.\s+(.*\S)\s*$")
ANSWER_Q_RE = re.compile(r"^\s*Q(\d+)\.\s+(.*\S)\s*$")
# Generalized: "Correct answer:" label optional (absent in the French doc), trailing option
# text optional (absent for Monitoring and about half of ComplementaryTopics' practice exam) --
# verified against all 12 English answer-key docs + the French one before relying on this
# (see chat history / commit message, not re-derived here).
ANSWER_CORRECT_RE = re.compile(r"^\s*✓\s*(?:Correct answer:\s*)?([A-D])\.(?:\s+(.*\S))?\s*$")


def parse_questions(lines: list[str]) -> list[ParsedQuestion]:
    questions: list[ParsedQuestion] = []
    i, n = 0, len(lines)
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
            options.append(OPTION_RE.match(lines[i]).group(2).strip())
            i += 1
        if len(options) != 4:
            raise ValueError(f"Question {number}: expected 4 options, found {len(options)}")
        questions.append(ParsedQuestion(number=number, text=text, options=options))
    return questions


MODULE_HEADER_RE = re.compile(r"^\s*Module\s+\d+\s*[:–—-]")


def parse_answer_key(lines: list[str]) -> list[ParsedAnswer]:
    answers: list[ParsedAnswer] = []
    i, n = 0, len(lines)
    while i < n:
        m = ANSWER_Q_RE.match(lines[i])
        if not m:
            i += 1
            continue
        number, text = int(m.group(1)), m.group(2).strip()
        i += 1
        cm = ANSWER_CORRECT_RE.match(lines[i])
        if not cm:
            raise ValueError(f"AnswerKey Q{number}: expected a correct-answer line, got: {lines[i]!r}")
        correct_letter = cm.group(1)
        correct_text = cm.group(2).strip() if cm.group(2) else None
        i += 1
        # Variable-length, not a fixed single line: at least one source (ComplementaryTopics
        # practice exam) sometimes splits one explanation across 2+ paragraphs. Gather everything
        # up to the next question or module header rather than assuming exactly one line.
        explanation_parts = []
        while i < n and not ANSWER_Q_RE.match(lines[i]) and not MODULE_HEADER_RE.match(lines[i]):
            if lines[i].strip():
                explanation_parts.append(lines[i].strip())
            i += 1
        explanation = " ".join(explanation_parts)
        answers.append(ParsedAnswer(number, text, correct_letter, correct_text, explanation))
    return answers


LETTER_INDEX = {"A": 0, "B": 1, "C": 2, "D": 3}


@dataclass
class Question:
    statement: str
    options: list[str]
    correct_index: int
    explanation: str


def build_and_validate(parsed_questions: list[ParsedQuestion], parsed_answers: list[ParsedAnswer], source: str,
                        warnings: list[str]) -> list[Question]:
    if len(parsed_questions) != len(parsed_answers):
        raise ValueError(f"{source}: {len(parsed_questions)} questions vs {len(parsed_answers)} answers")
    result: list[Question] = []
    for idx, (pq, pa) in enumerate(zip(parsed_questions, parsed_answers), start=1):
        if pa.text != pq.text:
            raise ValueError(f"{source} item #{idx}: text mismatch\n  q: {pq.text!r}\n  a: {pa.text!r}")
        # The letter is always present and authoritative (unlike the restated option text, which
        # is sometimes absent -- Monitoring -- or truncated -- e.g. Compute #14 keeps only
        # "...ARM) template" from the option's full "...ARM) template — a JSON file defining the
        # resources to deploy" -- or too short to be unique on its own -- Compute #17's "No"
        # substring-matches two different options starting with "No —..."). Index by letter;
        # when text is also given, treat it as a sanity check (that option must contain it as a
        # substring), not as the lookup key.
        correct_index = LETTER_INDEX[pa.correct_letter]
        option_text = pq.options[correct_index]
        explanation_prefix = ""
        if pa.correct_text is not None:
            ct_lower, opt_lower = pa.correct_text.lower(), option_text.lower()
            if ct_lower.startswith(opt_lower) and len(pa.correct_text) > len(option_text):
                # The "Correct answer:" paragraph merged with the start of the explanation in the
                # source doc (e.g. ComplementaryTopics practice exam #4: the option itself,
                # "`az deployment group what-if`", immediately followed by " previews the
                # changes..." with no paragraph break) -- recover that leading fragment instead of
                # silently dropping it.
                explanation_prefix = pa.correct_text[len(option_text):].strip()
            elif opt_lower not in ct_lower and ct_lower not in opt_lower:
                # Not a truncation in either direction (those are handled above/below) -- likely a
                # free paraphrase rather than a restatement (seen repeatedly in the
                # ComplementaryTopics practice exam specifically, e.g. "No additional configuration
                # is required" for an option worded "Nothing additional — the Standard SKU...").
                # The letter is still trusted; this is a warning to hand-review, not a hard error,
                # since a real letter/text mismatch would look exactly the same from here and
                # there's no reliable way to tell the two apart automatically.
                warnings.append(
                    f"{source} item #{idx} ({pq.text!r}): answer key says {pa.correct_letter} but its "
                    f"restated text doesn't match that option -- please verify by hand\n"
                    f"    correct_text: {pa.correct_text!r}\n    option {pa.correct_letter}: {option_text!r}"
                )
        explanation = f"{explanation_prefix} {pa.explanation}".strip() if explanation_prefix else pa.explanation
        result.append(Question(pq.text, pq.options, correct_index, explanation))
    return result


# --------------------------------------------------------------------------------------
# De-biasing (identical algorithm to the predecessor script -- see module docstring)
# --------------------------------------------------------------------------------------
def assign_correct_positions(count: int, num_options: int = 4, max_run: int = 2, rng: random.Random = random) -> list[int]:
    positions: list[int] = []
    for _ in range(count):
        candidates = list(range(num_options))
        if len(positions) >= max_run and len(set(positions[-max_run:])) == 1:
            candidates.remove(positions[-1])
        positions.append(rng.choice(candidates))
    return positions


def reshuffle_options(questions: list[Question], rng: random.Random) -> list[Question]:
    targets = assign_correct_positions(len(questions), rng=rng)
    out = []
    for q, target in zip(questions, targets):
        correct_text = q.options[q.correct_index]
        distractors = [o for i, o in enumerate(q.options) if i != q.correct_index]
        rng.shuffle(distractors)
        new_options = distractors[:target] + [correct_text] + distractors[target:]
        out.append(Question(q.statement, new_options, target, q.explanation))
    return out


def longest_run(positions: list[int]) -> int:
    best = cur = 1
    for i in range(1, len(positions)):
        cur = cur + 1 if positions[i] == positions[i - 1] else 1
        best = max(best, cur)
    return best


# --------------------------------------------------------------------------------------
# SQL rendering (mirrors V2-V7's shape exactly)
# --------------------------------------------------------------------------------------
def sql_escape(text: str) -> str:
    return text.replace("'", "''")


def render_module_sql(module_id: str, module_code: str, module_title: str, module_description: str | None,
                       position: int, questions: list[Question], include_certification: bool) -> str:
    lines: list[str] = []
    if include_certification:
        lines.append("INSERT INTO certification (id, code, title, description, position)")
        lines.append(
            f"VALUES ('{CERTIFICATION_ID}', '{CERTIFICATION_CODE}', '{sql_escape(CERTIFICATION_TITLE)}',\n"
            f"        '{sql_escape(CERTIFICATION_DESCRIPTION)}', 1);"
        )
        lines.append("")
    desc_sql = f"'{sql_escape(module_description)}'" if module_description else "NULL"
    lines.append("INSERT INTO module (id, certification_id, code, title, description, position)")
    lines.append(
        f"VALUES ('{module_id}', '{CERTIFICATION_ID}', '{module_code}', '{sql_escape(module_title)}',\n"
        f"        {desc_sql}, {position});"
    )
    lines.append("")
    for qi, q in enumerate(questions, start=1):
        question_id = str(uuid.uuid4())
        lines.append("INSERT INTO question (id, module_id, type, statement, explanation, position, active)")
        lines.append(
            f"VALUES ('{question_id}', '{module_id}', 'SINGLE_CHOICE', '{sql_escape(q.statement)}',\n"
            f"        '{sql_escape(q.explanation)}', {qi}, TRUE);"
        )
        lines.append("INSERT INTO answer_option (id, question_id, label, is_correct, position)")
        lines.append("VALUES")
        opt_lines = []
        for oi, opt in enumerate(q.options):
            is_correct = "TRUE" if oi == q.correct_index else "FALSE"
            opt_lines.append(f"    ('{uuid.uuid4()}', '{question_id}', '{sql_escape(opt)}', {is_correct}, {oi + 1})")
        lines.append(",\n".join(opt_lines) + ";")
        lines.append("")
    return "\n".join(lines)


# --------------------------------------------------------------------------------------
# Per-source loaders
# --------------------------------------------------------------------------------------
def load_pair(docx_dir: Path, q_filename: str, a_filename: str, warnings: list[str]) -> list[Question]:
    q_path, a_path = docx_dir / q_filename, docx_dir / a_filename
    if not q_path.exists() or not a_path.exists():
        raise FileNotFoundError(f"missing {q_path.name} or {a_path.name}")
    pq = parse_questions(docx_paragraphs(q_path))
    pa = parse_answer_key(docx_paragraphs(a_path))
    return build_and_validate(pq, pa, q_filename, warnings)


FRENCH_SPLIT_MARKER_RE = re.compile(r"^\s*✅")


def load_french_combined(docx_dir: Path, filename: str, warnings: list[str]) -> list[Question]:
    path = docx_dir / filename
    if not path.exists():
        raise FileNotFoundError(f"missing {filename}")
    lines = docx_paragraphs(path)
    split_at = next((i for i, l in enumerate(lines) if FRENCH_SPLIT_MARKER_RE.match(l)), None)
    if split_at is None:
        raise ValueError(f"{filename}: no '✅' marker found to split questions from answers")
    pq = parse_questions(lines[:split_at])
    pa = parse_answer_key(lines[split_at:])
    return build_and_validate(pq, pa, filename, warnings)


# --------------------------------------------------------------------------------------
# Main
# --------------------------------------------------------------------------------------
def main():
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument("--docx-dir", required=True, type=Path)
    parser.add_argument("--out-dir", required=True, type=Path)
    parser.add_argument("--start-version", required=True, type=int)
    parser.add_argument("--seed", type=int, default=None)
    parser.add_argument("--dry-run", action="store_true")
    args = parser.parse_args()

    rng = random.Random(args.seed) if args.seed is not None else random.Random()
    warnings: list[str] = []

    all_units: list[tuple[str, str, str | None, list[Question]]] = []  # code, title, description, questions

    for code, title, q_file, a_file in REVIEW_MODULES:
        qs = load_pair(args.docx_dir, q_file, a_file, warnings)
        all_units.append((code, title, None, qs))

    for code, title, q_file, a_file in PRACTICE_MODULES:
        qs = load_pair(args.docx_dir, q_file, a_file, warnings)
        all_units.append((code, title, None, qs))

    fr_code, fr_title, fr_file = FRENCH_REVISION_MODULE
    all_units.append((fr_code, fr_title, None, load_french_combined(args.docx_dir, fr_file, warnings)))

    if warnings:
        print(f"\n⚠️  {len(warnings)} answer(s) need manual review (letter trusted, restated text didn't match):\n")
        for w in warnings:
            print(f"  - {w}\n")

    print(f"Parsed {len(all_units)} modules, {sum(len(u[3]) for u in all_units)} questions total.\n")

    reshuffled_units = []
    for code, title, desc, questions in all_units:
        before = [q.correct_index for q in questions]
        reshuffled = reshuffle_options(questions, rng)
        after = [q.correct_index for q in reshuffled]
        assert longest_run(after) <= 2, f"{code}: shuffle invariant violated"
        print(f"{code:45s} {len(questions):3d}q  before-run={longest_run(before)}  after-run={longest_run(after)}  counts(A/B/C/D)={[after.count(i) for i in range(4)]}")
        reshuffled_units.append((code, title, desc, reshuffled))

    if args.dry_run:
        print("\n[dry-run] all sources parsed, cross-validated, and reshuffled OK. No files written.")
        return

    args.out_dir.mkdir(parents=True, exist_ok=True)
    version = args.start_version
    for i, (code, title, desc, questions) in enumerate(reshuffled_units):
        module_id = str(uuid.uuid4())
        sql = render_module_sql(module_id, code, title, desc, position=i + 1, questions=questions,
                                 include_certification=(i == 0))
        safe_name = code.replace("-", "_")
        out_path = args.out_dir / f"V{version}__seed_az104_{safe_name}.sql"
        out_path.write_text(sql, encoding="utf-8")
        print(f"wrote {out_path} ({len(questions)} questions)")
        version += 1

    print("\nDone.")


if __name__ == "__main__":
    main()
