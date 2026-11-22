#!/bin/bash
# AI accountant — SessionStart hook.
# Prints the accountant's memory for this project: date, company stage and tax regime,
# overdue/upcoming obligations, last journal entries, inbox files waiting, stale regulation
# cards, pending learnings, latest digests.
# Silent when the project has no ai-team/accountant workspace.
set -u
# Find the nearest workspace: ai-team/accountant in the project folder or any parent folder
# (a company folder can hold ai-team/ next to projects/<product>/).
dir="${CLAUDE_PROJECT_DIR:-$PWD}"
WS=""
while [ -n "$dir" ] && [ "$dir" != "/" ]; do
  if [ -d "$dir/ai-team/accountant" ]; then WS="$dir/ai-team"; break; fi
  dir=$(dirname "$dir")
done
[ -n "$WS" ] || exit 0
ME="$WS/accountant"
cd "$ME" || exit 0

version=$(grep -m1 '"version"' "${CLAUDE_PLUGIN_ROOT:-.}/.claude-plugin/plugin.json" 2>/dev/null | sed 's/.*"version": *"\([^"]*\)".*/\1/')
today=$(date +%F)
soon=$(date -v+30d +%F 2>/dev/null || date -d '+30 days' +%F)
stale=$(date -v-30d +%F 2>/dev/null || date -d '-30 days' +%F)

echo "=== AI ACCOUNTANT ${version:+v$version }— session context (${today}) ==="
echo "Rules: ${CLAUDE_PLUGIN_ROOT:-<plugin>}/RULES.md (agent ai-accountant:accountant). Verify every rule (verify-regulation). Register every document (record-document). Log every job (log-job)."
echo "Workspace: $WS  (every ai-team/... path in the rules and skills means this folder)"

stage=$(grep -m1 '^- \*\*Stage:\*\*' "$WS/company/profile.md" 2>/dev/null | sed 's/^- \*\*Stage:\*\* *//')
regime=$(grep -m1 '^- \*\*Tax regime:\*\*' "$WS/company/profile.md" 2>/dev/null | sed 's/^- \*\*Tax regime:\*\* *//' | cut -c1-60)
juris=$(grep -m1 '^- \*\*Jurisdiction:\*\*' "$WS/team.md" 2>/dev/null | sed 's/^- \*\*Jurisdiction:\*\* *//')
echo "Company stage: ${stage:-unknown} · Tax regime: ${regime:-unknown} · Jurisdiction: ${juris:-unknown}"
echo

echo "--- Accounting obligations: overdue or due by ${soon} ---"
if [ -f history/obligations.md ]; then
  awk -F'|' -v today="$today" -v soon="$soon" '
    /^\| O-/ {
      id=$2; due=$3; type=$4; what=$5; status=$7
      gsub(/^ +| +$/, "", id); gsub(/^ +| +$/, "", due); gsub(/^ +| +$/, "", type)
      gsub(/^ +| +$/, "", what); gsub(/^ +| +$/, "", status)
      if (status == "open" && due ~ /^[0-9]{4}-[0-9]{2}-[0-9]{2}$/ && due <= soon) {
        flag = (due < today) ? "OVERDUE " : ""
        printf "%s%s  %s  [%s] %s\n", flag, id, due, type, what; n++
      }
      if (status == "open" && due == "—") u++
    }
    END { if (n == 0) print "(none)"; if (u > 0) printf "(+ %d open items without a date)\n", u }' history/obligations.md
fi
echo

echo "--- Last journal entries ---"
j=$(grep '^## J-' history/journal.md 2>/dev/null | tail -n 6)
echo "${j:-(none)}"
echo

inbox=$(find inbox -type f ! -name 'README.md' ! -name '.*' 2>/dev/null | wc -l | tr -d ' ')
echo "Inbox: ${inbox:-0} file(s) waiting$( [ "${inbox:-0}" -gt 0 ] && echo ' → offer to run ai-accountant:record-document')"
echo

echo "--- Regulation cards not verified since ${stale} (re-verify before use) ---"
found=0
for f in regulations/*.md; do
  [ -e "$f" ] || continue
  [ "$(basename "$f")" = "README.md" ] && continue
  lv=$(grep -m1 '^last_verified:' "$f" | awk '{print $2}')
  if [ -z "$lv" ] || [[ "$lv" < "$stale" ]]; then echo "$f (last_verified: ${lv:-never})"; found=1; fi
done
[ $found -eq 0 ] && echo "(none)"
echo

pending=$(grep -c '^| L-[0-9]* .*| general .*| pending' learnings.md 2>/dev/null || true)
tw=$(ls -1 digests/*-tax-watch.md 2>/dev/null | tail -n 1)
mc=$(ls -1 digests/*-monthly-close.md 2>/dev/null | tail -n 1)
echo "Pending general learnings: ${pending:-0}$( [ "${pending:-0}" -ge 3 ] && echo ' → suggest ai-accountant:improve') · Latest tax watch: ${tw:-none yet} · Latest monthly close: ${mc:-none yet}"
exit 0
