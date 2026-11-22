---
name: log-job
description: Record a job in the company's financial memory — journal entry plus updates to obligations, decisions, registers, company facts, research agenda and learnings. Use at the end of every task that produced advice, a calculation, a registered document, a decision, a deadline or a fact change (including scheduled runs).
---

# log-job

History is **append-only**: add entries/rows; to correct, add a new entry referencing the old one.
Never delete. Get today's date with `date +%F`. Paths are under `ai-team/accountant/` unless they
start with `ai-team/`.

1. **Journal** — append to `history/journal.md` with the next J-number in the format at the top of
   that file (request, done, outputs, relied on + verification dates, registered IDs, follow-ups).
2. **Obligations** — every new deadline, filing or recommended action → new row in
   `history/obligations.md` (exact table format, `YYYY-MM-DD` or `—`). Finished → status `done` +
   date in the last column.
3. **Decisions** — founder chose something (regime, policy, treatment, accepting a risk) →
   `history/decisions.md` with options, reasons, sources, review trigger.
4. **Registers** — make sure every document touched is in its register (see
   `ai-accountant:record-document`).
5. **Company facts** — changed facts → `ai-team/company/profile.md` or the product file in
   `ai-team/company/products/`; tick items in `ai-team/company/documents.md`; say in the journal
   what changed. If the change contradicts another member's files, flag it to the founder.
6. **Research agenda** — new topic → add a row; researched topic → update status.
7. **Learnings** — if the task taught something (correction, mistake, moved source, missing step,
   repeated question), append a row to `learnings.md` (scope `company` or `general`).
8. Tell the founder in one line what was recorded (e.g. "Logged J-0012, INV-I-2027-0003, O-0021").
