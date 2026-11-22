# Contributing

Improvements are welcome — from people and from the accountant's own `improve` skill.

## The one rule: no company data

This repository is public. Never commit anything from an `ai-team/` workspace: no company or
product names, people, counterparties, amounts, tax IDs, account numbers, contract or invoice
numbers, addresses, or quotes from private documents. Use neutral examples ("a foreign hosting
supplier", "1,000,000 in local currency"). Pull requests that contain company data are closed.

## What you can change

| Change | Where | Version bump |
|---|---|---|
| Fix wording, a step, a template | `skills/`, `templates/`, `RULES.md` | patch |
| Update an official source / URL / form name | `jurisdictions/<name>/` | patch |
| Add a skill | `skills/<name>/SKILL.md` (+ list it in `RULES.md` and `README.md`) | minor |
| Add a jurisdiction pack | `jurisdictions/<name>/` (see `jurisdictions/README.md`) | minor |
| Add a workspace file or register | `skills/setup/workspace/accountant/` + a migration note in `CHANGELOG.md` | minor |
| Change the shared workspace contract | coordinate in the `ai-team` repo first | major |

Hard rules may be tightened, never weakened: verify every rule every time, official sources as the
basis, precise citation, show the numbers, register every document, append-only history,
escalation, never invent, confidentiality, never file/pay/sign or act for the company.

## How

1. Fork, branch (`improve/<date>-<slug>` or `feat/<slug>`), edit.
2. Bump `version` in `.claude-plugin/plugin.json` and add a `CHANGELOG.md` entry.
3. Run `claude plugin validate .`
4. Open a pull request describing the lesson or problem behind the change.

Installed copies update only when the version changes, so always bump it.
