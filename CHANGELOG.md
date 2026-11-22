# Changelog

All notable changes to the AI accountant. Versions follow semver: **patch** = wording, fixes,
source updates · **minor** = new skill, new jurisdiction pack, new workspace file (with a
migration note for `setup` upgrade mode) · **major** = breaking change to the workspace contract.

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
