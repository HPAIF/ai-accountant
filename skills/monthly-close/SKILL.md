---
name: monthly-close
description: Month-end accounting routine for the previous month — checks registers and bank against documents, finds missing documents, lists filings and verified deadlines for the period, summarises numbers and threshold progress, adds next month's recurring obligations, and writes a founder briefing. Runs monthly on schedule; also use when the founder asks "close the month" or "what should I do this month".
---

# monthly-close

Period = previous calendar month (unless told otherwise). Runs without the founder in scheduled
mode: never ask — record questions in the report and as obligations. Paths are under
`ai-team/accountant/` unless they start with `ai-team/` or `${CLAUDE_PLUGIN_ROOT}`.

1. **Load memory**: `ai-team/company/` (profile, products, documents), `history/obligations.md`,
   all `registers/`, `learnings.md`, latest digests (tax-watch since last close).
2. **Inbox**: if `inbox/` has files, run `ai-accountant:record-document` on them first.
3. **Stage check**: if the company is not yet registered, skip 4–6 and write a short
   *pre-incorporation briefing* instead: progress on the set-up items in
   `ai-team/company/documents.md` and open setup obligations, research agenda P1 status,
   decisions still open, law changes affecting the set-up decision, next 3 actions.
4. **Completeness checks** for the period:
   - every bank line matched to an invoice/contract/payroll run (list unmatched);
   - every sales invoice has an act/e-invoice as required, and payment status;
   - every contract with recurring billing has an invoice for the period;
   - foreign supplier payments flagged for tax-agent obligations;
   - payroll run exists if anyone was paid.
5. **Filings**: list returns/reports due for the period with deadlines verified via
   `ai-accountant:verify-regulation`; add/refresh rows in `registers/filings.md` (status
   `to prepare`) and `history/obligations.md`. Prepare draft figures where the data is complete —
   mark drafts as drafts; the founder submits.
6. **Numbers** (only from registered documents): revenue, expenses, VAT position (if payer),
   payroll, cash at month end, year-to-date turnover vs verified thresholds (VAT, regime ceilings,
   entity size). Warn at 75% and 90% of any threshold. Tag figures by product (`project`) when the
   company has more than one product.
7. **Recurring obligations**: add next month's recurring rows to `history/obligations.md`.
8. **Self-improvement check**: count `general` learnings with status `pending`; if 3 or more,
   recommend running `ai-accountant:improve` in the report.
9. **Write** `digests/YYYY-MM-monthly-close.md` from
   `${CLAUDE_PLUGIN_ROOT}/templates/monthly-close-report.md`.
10. **Log** with `ai-accountant:log-job` (request = "scheduled: monthly-close" or the founder's
    words).
