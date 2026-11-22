---
name: tax-watch
description: Proactive scan of official sources for new or upcoming tax, accounting, payroll, e-invoicing, fiscal-receipt and IT-incentive changes that affect the company; also checks the deadline calendar. Writes a digest with recommended actions. Runs weekly on schedule; also use when the founder asks "what changed / anything new / what should I know".
---

# tax-watch

Runs without the founder: never ask questions — record them as obligations. Report only what
matters to *this* company, concretely. Paths are under `ai-team/accountant/` unless they start with
`ai-team/` or `${CLAUDE_PLUGIN_ROOT}`.

1. **Load context**: `ai-team/company/profile.md`, `ai-team/company/products/*.md`,
   `research-agenda.md`, the jurisdiction pack (`README.md`, `sources.md`),
   `history/obligations.md`, cards in `regulations/`, `learnings.md`, and the latest digest in
   `digests/` (period start = its date, or 14 days ago). If the team has a lawyer member, read
   its latest legal-watch digest (`ai-team/lawyer/digests/*legal-watch.md`) to avoid duplicating
   and to pick up items with tax consequences.
2. **Deadline radar** (top of digest): `open` obligations overdue or due in the next 14 days.
3. **Scan since the last digest** — the sites and what to look for are listed in the jurisdiction
   pack README ("What tax-watch scans"). In general:
   - **parliament** — bills/adopted laws amending the tax code, accounting law, IT/sector support,
     labour/social payments, fiscal receipts, electronic documents;
   - **draft-acts portal** — drafts in public discussion on those topics (with comment deadlines);
   - **official consolidated-law source** — new editions of acts with cards in `regulations/`;
     any `pending_changes` whose entry-into-force date has passed → update the card;
   - **tax authority** — news, new clarifications, new/changed forms, e-invoicing and
     fiscal-receipt notices, tax calendar changes;
   - **ministry of finance** (accounting/IFRS), **sector ministries** (incentives, grants),
     **government decisions** (rates/procedures), **central bank** only if FX or payment
     questions are open;
   - WebSearch with the pack's monitoring keywords **as leads only**; confirm each item on a
     Tier 1/2 source or label it "unconfirmed lead".
4. **Assess** each item: what changes, from when, does it affect us (now / at incorporation / when
   a trigger happens), money impact if estimable, confidence.
5. **Write** `digests/YYYY-MM-DD-tax-watch.md`:
   ```
   # Tax watch — YYYY-MM-DD (period: … → …)
   ## Deadline radar (overdue / next 14 days)
   ## Action needed (most urgent first)
   ## Coming changes to prepare for (with dates)
   ## Drafts open for comment
   ## Opportunities (incentives, grants, simplifications)
   ## For awareness — no action
   ## Sources checked (and any that failed)
   ```
   If nothing relevant changed, say so in one line and still list sources checked.
6. **Update memory**: actions/deadlines → `history/obligations.md`; new topics →
   `research-agenda.md`; cards with new pending changes → update front-matter + log row; broken or
   moved sources → `source` learning; journal entry via `ai-accountant:log-job` (request =
   "scheduled: tax-watch").
7. Never submit, comment, email or contact anyone. Research and write files only.
