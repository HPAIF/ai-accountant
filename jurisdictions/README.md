# Jurisdiction packs

The AI accountant's rules and skills are country-neutral. Everything country-specific — which
sites publish the law, how editions and amendments are shown, which authority clarifies tax
rules, which topics a typical company must research — lives in a **jurisdiction pack**.

| Pack | Covers |
|---|---|
| `armenia/` | Republic of Armenia (+ EAEU where it applies) |

No pack for your country? The accountant still works in **generic mode**: it builds
`ai-team/accountant/sources.md` from official government sources on first use and records a
learning suggesting a new pack. Run `ai-accountant:improve` (or open a pull request) to turn that
into a pack for everyone.

## Adding a pack

Create `jurisdictions/<country-slug>/` with four files:

| File | What goes in it |
|---|---|
| `README.md` | Official language and naming rule; currency; tax authority and central bank; **how to verify a rule** (consolidated-law site, how status/editions/amendments are shown, typical entry-into-force dates, where clarifications are published and how they are numbered, where bills and drafts appear, top courts, official exchange rates); **what tax-watch scans**; monitoring keywords; common filings and documents to know (unverified names) |
| `sources.md` | Source registry by tier: Tier 1 the law itself · Tier 2 regulators · Tier 3 professional interpretation · Tier 4 leads only — plus rules of use |
| `research-agenda.md` | Starting research agenda for a typical company in that country (P1 before incorporation, P2 first months, P3 on trigger), same columns as `armenia/research-agenda.md`; no law content, only what to research and why |
| `permissions.json` | `{"permissions":{"allow":[...]}}` — `WebFetch(domain:…)` for the official sources, plus `WebSearch`, `Bash(date:*)`, `Bash(python3:*)`, `Bash(bc:*)`; `setup` offers to merge it into the project's `.claude/settings.json` |

Rules for packs: official sources only in Tiers 1–2; no company data; nothing presented as
verified law (packs say *where* and *how* to check, never *what* the current rate is). Bump the
plugin's **minor** version and add a `CHANGELOG.md` entry.
