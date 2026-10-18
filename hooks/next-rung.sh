#!/bin/sh
# UserPromptSubmit: put the next rung in front of the agent so it doesn't have to remember LAUNCH.md.
cd "${CLAUDE_PROJECT_DIR:-.}" 2>/dev/null || exit 0
[ -f LAUNCH.md ] || exit 0
# /im-a-big-dev-now removes this block; no block means nudges are off.
grep -qs '<!-- baby-steps -->' CLAUDE.md AGENTS.md || exit 0

awk -v today="$(date +%F)" '
/^- \[[ ~]\] / {
  sub(/\r$/, "")
  if ($0 ~ /^- \[~\]/) {
    if (!match($0, /until [0-9-]+/) || substr($0, RSTART + 6, RLENGTH - 6) > today) next
  }
  line = $0; sub(/^- \[.\] /, "", line)
  if (first == "") first = line
  if (build == "" && line ~ /· (you|both)([: ]|$)/) build = line
}
END {
  if (first == "") exit
  print "[baby-steps] Only if this prompt starts a feature or change of 3+ min, follow \"Rules for the agent\" in LAUNCH.md. Otherwise ignore this."
  if (build != "") print "While-you-build rung: " build
  if (first ~ /· agent([: ]|$)/) print "End-of-task agent rung: " first
}' LAUNCH.md
exit 0
