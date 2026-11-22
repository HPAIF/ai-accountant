---
name: setup
description: Set up (or repair/upgrade) the AI accountant in the current project — creates the private ai-team/ workspace (shared company files + ai-team/accountant/ with registers and document folders), seeds the research agenda from a jurisdiction pack, registers the accountant in team.md, and offers permissions, privacy and scheduled runs. Use on first use in a project, when the workspace is missing, or after a plugin update that changes the workspace.
---

# setup

Template files are in `${CLAUDE_PLUGIN_ROOT}/skills/setup/workspace/`. Never overwrite an
existing file in `ai-team/` — the workspace may already hold real history and documents.

1. **Explain** in two lines what will be created (`ai-team/` private workspace) and that nothing
   leaves the machine.
   **Location:** if an `ai-team/` already exists in this folder or a parent folder, join it —
   never create a second one. Otherwise ask where to create it: in this folder (default), or in a
   parent company folder when this project is one of several products (layout
   `<company>/ai-team/` next to `<company>/projects/<product>/`).
2. **Ask** (one question at a time, skip what is already in `ai-team/team.md`):
   - jurisdiction — list the folders in `${CLAUDE_PLUGIN_ROOT}/jurisdictions/` as options, plus
     "other" (generic mode);
   - answer language (default English).
3. **Create shared files if missing** (another member may have created them already):
   `ai-team/README.md`, `ai-team/team.md`, `ai-team/company/profile.md`,
   `ai-team/company/documents.md`, `ai-team/company/products/_template.md`. Fill `team.md`
   (jurisdiction, date, `workspace_contract: 1`) and the profile's stage date and jurisdiction.
4. **Create the member folder** `ai-team/accountant/` from the template's `accountant/` folder:
   `learnings.md`, `history/{journal,decisions,obligations}.md`,
   `registers/{README,contracts,invoices-out,invoices-in,bank,payroll,assets,filings}.md`,
   `documents/README.md` + the document sub-folders, `regulations/README.md`,
   `research/README.md`, `digests/README.md`, `inbox/README.md`.
5. **Seed the research agenda:** copy
   `${CLAUDE_PLUGIN_ROOT}/jurisdictions/<name>/research-agenda.md` to
   `ai-team/accountant/research-agenda.md`. Generic mode → create an agenda with the standard
   topics (tax regimes, VAT, accounting law, founder pay, primary documents and e-invoicing,
   payments to non-residents, payroll, contractors, fiscal receipts, currency, profit tax,
   assets, tax administration) and an empty `ai-team/accountant/sources.md` to fill with
   official sources on first research.
6. **Register** a row in `team.md`: `accountant | ai-accountant | ai-accountant:accountant |
   ai-team/accountant/ | <plugin version> | <today> | tax, accounting, documents & registers,
   payroll, tax watch, monthly close`.
7. **First journal entry** `J-0001 · <today> · setup` and obligations:
   - `O-0001` "Fill in company/profile.md and a product file in company/products/" (due in 14 days);
   - `O-0002` "Start research agenda P1 (tax regime, accounting law, VAT, payments to
     non-residents)" (due in 21 days);
   - `O-0003` "Decide legal form + tax regime before registration (with the lawyer member if
     installed)" (due `—`), only if the profile's stage is pre-incorporation.
   If products are described in the project (README, docs), offer to draft the product file's
   revenue/costs sections from them — the founder confirms before you write.
8. **Offer, don't force** (ask each; do only what is approved):
   - **Privacy:** if the project is a git repo, add `ai-team/` to `.gitignore`; suggest
     `git init` inside `ai-team/` for private, tamper-evident history.
   - **Permissions:** merge the `allow` list from `jurisdictions/<name>/permissions.json` into
     the project's `.claude/settings.json` so official sources can be fetched and calculations
     run without prompts.
   - **Scheduled runs:** weekly `tax-watch` (e.g. Mondays 11:00) and monthly `monthly-close`
     (5th of each month 10:00). Create them if a scheduling tool is available in this session;
     otherwise explain how to schedule them in the Claude app.
   - **Monthly habit:** suggest the founder drops all bank statements and invoices into
     `ai-team/accountant/inbox/` by the 5th.
9. **Upgrade mode** (workspace exists): compare with the template, create only missing files or
   folders, apply migrations listed in `CHANGELOG.md` for versions newer than the one in
   `team.md`, update the version in `team.md`, and log what changed.
10. Finish with a short summary: what exists now, the three most useful first questions to ask
    the accountant, and `log-job`.
