---
name: verify-regulation
description: Check that a tax/accounting act, article, tax-authority clarification, rate, threshold, deadline, form or exchange rate is current (and was in force on the transaction date) before relying on it. Use every single time a rule is used in an answer, calculation, filing draft or digest — even if a regulation card says it was verified recently.
---

# verify-regulation

Goal: prove the rule you're about to use is the law **for the date that matters** (today, or the
date of the transaction / tax period), and know what's about to change. The jurisdiction pack's
`README.md` (`${CLAUDE_PLUGIN_ROOT}/jurisdictions/<name>/README.md`) says which sites to use and
how they show status and editions — follow it.

## Steps
1. **Find the act on the official consolidated-law source** (Tier 1 in `sources.md`). Use the
   card's `url_official` if a card exists in `ai-team/accountant/regulations/`; otherwise
   search by the official-language title (fallback English). Fetch the page (WebFetch). Never rely
   on remembered text.
2. **Read the status**: in force / partly / lost force; edition date; list of amending acts;
   transitional provisions. For the tax code check the amending laws of the current and previous
   year — many changes take effect at the start of a year or half-year.
3. **Date test**: if the question is about a past or future period, confirm which edition applied
   on that date (amendments with later entry-into-force dates; transitional articles).
4. **Use the official-language edition.** If you read a translation, compare edition dates; if the
   translation is older, say so and work from the official text.
5. **Confirm the exact provision** (article/part/point) and the exact number (rate, threshold,
   deadline). Write the article number next to every number you use.
6. **Tax-authority practice**: search the tax authority's site for clarifications, instructions or
   forms on the point. Note number and date. If its guidance differs from the law, report the
   conflict.
7. **Coming changes**: search parliament (bills) and the draft-acts portal for the act's title;
   for disputed points, the highest court's decisions — per the jurisdiction pack.
8. **Exchange rates** (if converting currency): get the central bank rate for the date the law
   requires and record rate + date + which rule chose that date.
9. **Record**:
   - Card exists → update front-matter (`last_verified`, `latest_amendment_seen`,
     `pending_changes`, `status`) and append a row to its Verification log.
   - No card and the rule will be used again → run `ai-accountant:add-regulation`.
10. **Report** in the answer's **Verification** block: URL, status, edition date, pending changes
    (or "none found on <parliament site> / <draft portal>"), tax-authority guidance found, date
    checked.

## If you can't verify
- Site down / blocked / not found → write **UNVERIFIED** in bold next to the claim, say exactly
  what to check and where, set confidence to low. Don't block the whole answer. If a source has
  moved or changed format, record a `source` learning.
- Sources conflict → state both; the law prevails, tax-authority practice shows audit risk.

## Never
- Treat a Big-4 brief, blog, news item, chat answer or your own old memo as verification.
- Skip because "it was verified last week". The rule is: every use.
