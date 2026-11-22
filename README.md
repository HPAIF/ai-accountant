# AI Accountant — an AI Team member for Claude Code

An in-house accounting & tax assistant for founders, packaged as a Claude Code plugin. It
researches tax and accounting rules from **official sources** and re-checks every rule each
time it uses it, registers every financial document you give it, keeps your company's full
financial history (contracts, invoices, bank, payroll, filings, decisions), runs a weekly tax
watch and a monthly close, and **learns from its work**.

> ⚠️ **It is not a certified accountant, auditor or tax adviser.** It **never files, pays or
> signs** anything — it prepares and you submit. For tax audits and notices, large amounts, the
> first annual return and cross-border structuring it tells you to get a professional, and
> prepares a brief so the paid hour is short.

Part of the **AI Team** — separate plugins (lawyer, accountant, more to come) that share one
private workspace in your project. See [HPAIF/ai-team](https://github.com/HPAIF/ai-team).

## Install

In Claude Code:

```
/plugin marketplace add HPAIF/ai-team
/plugin install ai-accountant@ai-team
```

Then, inside your project, say **"set up the AI accountant"** (or run `/ai-accountant:setup`).
Setup asks for your jurisdiction and creates a private `ai-team/` folder in the project.

To share the setup with a team, add this to the project's `.claude/settings.json`:

```json
{
  "extraKnownMarketplaces": {
    "ai-team": { "source": { "source": "github", "repo": "HPAIF/ai-team" } }
  },
  "enabledPlugins": { "ai-accountant@ai-team": true }
}
```

## How to use it

Talk normally — your session hands accounting work to the `ai-accountant:accountant` agent, or
start a session as the accountant with `claude --agent ai-accountant:accountant`.

| You say | What happens (skill) |
|---|---|
| "Which tax regime should I choose?" | verified research memo (`tax-research`) |
| "Research VAT on payments to our hosting provider" | memo + regulation card (`tax-research`, `add-regulation`) |
| drop files in `ai-team/accountant/inbox/` → "process the inbox" | filed, registered, deadlines created (`record-document`) |
| "I signed a contract with a customer for 50,000/month" | contract register + invoicing obligations (`record-document`, `log-job`) |
| "We registered the company, tax ID …" | company facts updated (`log-job`) |
| "What changed in tax law?" | digest in `ai-team/accountant/digests/` (`tax-watch`) |
| "Close the month" / "What should I do this month?" | month report + filings list (`monthly-close`) |
| "Improve yourself" | anonymised upgrade proposal for this plugin (`improve`) |

Every session in a project with an accountant workspace starts with a short context: overdue and
upcoming obligations, recent jobs, files waiting in the inbox, stale regulation cards and pending
learnings.

## Runs without you

`setup` offers two scheduled runs (in the Claude app they run while the app is open; a missed
run happens at next launch):
- **Weekly tax watch** — e.g. Mondays 11:00 → `digests/<date>-tax-watch.md` + new obligations.
- **Monthly close** — 5th of each month 10:00 → `digests/<YYYY-MM>-monthly-close.md` (before
  incorporation: a set-up briefing instead).

## What lives where

| Public (this plugin) | Private (your project, `ai-team/`) |
|---|---|
| rules (`RULES.md`), skills, templates, hooks | company profile and one file per product (`ai-team/company/`) |
| jurisdiction packs (`jurisdictions/`) — official sources, research agenda | journal, decisions, obligations, registers, documents, regulation cards, research, digests |
| | `learnings.md` — what the accountant learned in *your* company |

The workspace layout is shared with other AI Team members (see the
[workspace contract](https://github.com/HPAIF/ai-team/blob/main/docs/workspace.md)). With
**ai-lawyer** installed, both read the same company facts, cross-reference contracts
(`lawyer:C-0003`) and hand questions to each other.

## Privacy

- `ai-team/` holds financial and personal data. **Never commit it to a public repository.**
  `setup` offers to add it to `.gitignore`; recommended: `git init` inside `ai-team/` for a
  private, tamper-evident history.
- The accountant searches the web for the *rule*, never for your facts, and never uploads your
  documents.
- Nothing leaves `ai-team/` unless you approve the exact, anonymised text of an improvement.

## Self-improvement

1. **Locally, immediately:** after a correction, a mistake, a moved source or a missing step, the
   accountant writes a lesson to `ai-team/accountant/learnings.md` and follows it from then on.
2. **Upstream, with your approval:** lessons useful to everyone are turned by `improve` into an
   anonymised pull request to this repository. It refuses changes that weaken the hard rules
   (verify every time, official sources, show the numbers, never file/pay/sign).

## Upgrading

```
/plugin marketplace update ai-team
/plugin update ai-accountant@ai-team
```

Restart Claude Code, then run `/ai-accountant:setup` once — upgrade mode adds any new workspace
files without touching your history.

## Jurisdictions

Ships with **Armenia** (`jurisdictions/armenia/`). Other countries work in generic mode until a
pack exists — see [`jurisdictions/README.md`](jurisdictions/README.md) to add one.

## Contributing & license

See [CONTRIBUTING.md](CONTRIBUTING.md). MIT licensed — see [LICENSE](LICENSE).
