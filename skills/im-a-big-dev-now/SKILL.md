---
name: im-a-big-dev-now
description: Baby Steps off switch. Turns off the launch nudges that /im-scared set up, keeping LAUNCH.md. Only run when the user invokes /im-a-big-dev-now or explicitly asks to stop the Baby Steps nudges.
license: MIT
disable-model-invocation: true
---

# I'm a big dev now

The user wants the Baby Steps nudges off.

1. Remove the block between `<!-- baby-steps -->` and `<!-- /baby-steps -->`, markers included, from `CLAUDE.md` and `AGENTS.md` in the project root. Leave the rest of each file untouched. If that leaves a file empty and it held nothing else, delete it.
2. Keep `LAUNCH.md`. Add a log line: `<YYYY-MM-DD> nudges off`.
3. Reply in two lines at most, no guilt and no persuasion:
   - If every rung is ticked: congratulate them in a few words. They launched.
   - Otherwise: `Nudges off. You got 6/10 rungs done. LAUNCH.md stays, and /im-scared turns them back on.`

If there is no block and no `LAUNCH.md`, say Baby Steps isn't set up in this project and stop.
