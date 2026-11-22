---
name: add-regulation
description: Create or refresh a regulation card in ai-team/accountant/regulations/ for an act, provision set, tax-authority clarification, treaty or rate table the company will rely on repeatedly. Use after researching a topic from the research agenda or when a rule is used for the second time.
---

# add-regulation

1. Check `ai-team/accountant/regulations/` — refresh the existing card instead of creating a
   duplicate.
2. Run `ai-accountant:verify-regulation` on the act (official consolidated source, official-
   language edition).
3. Copy `${CLAUDE_PLUGIN_ROOT}/templates/regulation-card.md` to
   `ai-team/accountant/regulations/<slug>.md` and fill:
   - front-matter (official titles EN + official language, number, URLs, status, latest
     amendment, pending changes, `last_verified` = today);
   - **only the provisions the company uses**, paraphrased from the official text, with article
     numbers — not the whole law;
   - every number (rate, threshold, deadline) in the Numbers table with effective-from date;
   - related tax-authority clarifications (number, date, link) and court practice if any.
4. Add the first Verification log row.
5. Update `ai-team/accountant/research-agenda.md` (Status `card`, card link, Last verified).
6. If the card reveals a recurring filing or deadline, add rows to `history/obligations.md`.
7. Log with `ai-accountant:log-job`.
