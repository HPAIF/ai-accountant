# Changelog

All notable changes to the AI accountant. Versions follow semver: **patch** = wording, fixes,
source updates · **minor** = new skill, new jurisdiction pack, new workspace file (with a
migration note for `setup` upgrade mode) · **major** = breaking change to the workspace contract.

## 0.2.3 — 2026-11-23
- Missed questions: an unanswered question that still matters is repeated briefly under
  "Still open:" at the end of the next answer.

## 0.2.2 — 2026-11-23
- Ask colleagues directly, never through the founder: @mention in group chats, the Agent tool
  as main agent, "Question for @member" when called by the lead.

## 0.2.1 — 2026-11-23
- Rule "Be concise": shortest answer that keeps all important information (warnings, numbers,
  dates, sources, decisions); long only when the content needs it.

## 0.2.0 — 2026-11-22
- The workspace is found in the project folder **or any parent folder**, so one company-level
  `ai-team/` serves several product repositories (`<company>/projects/<product>/`). The session
  hook prints the resolved workspace path.
- `setup` joins an existing workspace in a parent folder and offers the company-level layout.
- Repository moved to the HPAIF organization.
- **Migration:** none.

## 0.1.0 — 2026-11-22

Initial public release, generalised from a private single-company setup.

- Agent `accountant`, rules in `RULES.md` (verify every rule every time, official sources,
  precise citation, show the numbers, register every document, append-only history, escalation,
  confidentiality, never file/pay/sign).
- Skills: `setup`, `tax-research`, `verify-regulation`, `add-regulation`, `record-document`,
  `log-job`, `tax-watch`, `monthly-close`, `improve`.
- Self-improvement: `learnings.md` in the workspace + `improve` skill for anonymised,
  founder-approved pull requests.
- SessionStart hook with obligations, journal, inbox, stale cards, pending learnings, digests.
- Jurisdiction pack: Armenia (sources, research agenda, verification notes, permissions).
- Workspace contract v1 (`ai-team/`, shared `company/` with one file per product).

### Migrations
- none (first release)
