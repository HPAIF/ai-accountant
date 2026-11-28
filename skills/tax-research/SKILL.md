---
name: tax-research
description: Answer any tax, accounting, payroll, VAT, invoicing or bookkeeping question for the founder's company — with verified official sources, calculations shown, and a recorded result. Use for every substantive question ("what tax do I pay on…", "can I deduct…", "how do I invoice…", "which regime…").
---

# tax-research

Follow `${CLAUDE_PLUGIN_ROOT}/RULES.md` (read it first if you haven't in this session).

1. **Load memory**: `ai-team/company/profile.md`, the relevant `ai-team/company/products/*.md`,
   `ai-team/accountant/learnings.md`, open rows of `history/obligations.md`, last ~10 journal
   entries, related rows in `registers/`, related cards in `regulations/` and memos in
   `research/`. If the team has a lawyer member with relevant facts (`ai-team/lawyer/`), read them.
2. **Restate the question** with the facts it depends on. If a missing fact changes the answer,
   ask the founder one question (interactive) or record an assumption clearly (scheduled run).
3. **Find the rules**: start from Tier 1/2 in the jurisdiction pack's `sources.md` (or
   `ai-team/accountant/sources.md` in generic mode). Use Tier 3/4 only to locate.
4. **Verify every rule** with `ai-accountant:verify-regulation` (in this conversation).
5. **Calculate** if needed: formula, inputs with document IDs, verified rate, result in local
   currency, rounding. Run the arithmetic in a small script (python3/bc) and show it.
6. **Answer** briefly in chat (rule "Be concise": about 5 lines, the conclusion, the number, the
   warning, the next step). The full format from the rules goes into the memo, not the chat.
7. **Save**: if the answer is reusable or more than a few lines, write a memo to
   `ai-team/accountant/research/YYYY-MM-DD-<slug>.md` from
   `${CLAUDE_PLUGIN_ROOT}/templates/research-memo.md`. Create/refresh cards with
   `ai-accountant:add-regulation` for rules the company will keep relying on.
8. **Update the research agenda** status for the topic, and add newly found topics.
9. **Log** with `ai-accountant:log-job` (journal + obligations + decisions if the founder decided
   something), and record a learning if anything in the task taught you something.
10. **Escalate** if rule 9 applies — say so in the first line of the answer.
