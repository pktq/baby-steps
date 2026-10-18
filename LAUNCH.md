# LAUNCH.md

> Written by `/im-scared`. Edit anything. Your coding agent reads this before each new feature.

## Launch means

**3 people (strangers are fine) used Baby Steps on their own project, and it helped them: each ticked at least one rung.**

Long-term goal: 100 stars. Dream: 10k stars, gone viral.
Budget: $0 · Window: none · Started: 2026-10-16

## Fears → answers

| Fear | Answer | Rung |
|---|---|---|
| It doesn't work as intended | You see the nudge fire in a fresh session on a real project before anyone else does | 3 |
| It doesn't actually help people | 3 testers before the public post. If it doesn't help them, fix it while it's quiet | 7–9 |
| Nobody uses it, only me | Testers come from people already complaining about never shipping | 7 |
| Nobody sees it | A demo GIF, plus one post in each of 3 places, drafted for you | 4, 10 |
| It doesn't go viral | It doesn't have to. Launch is 3 people helped. Stars are a bonus | n/a |

## First 3 people

- r/ClaudeAI tester post
- Claude Discord
- Replies to "I never ship" posts on X or Reddit

## Ladder

`[ ]` todo · `[x]` done · `[~]` snoozed. Tags: who does it, and what the agent prepares.

- [x] 1. Build the skill: interview, LAUNCH.md, nudges, off switch, 9 stack ladders · agent
- [x] 2. Commit and publish the repo · 3m · you: the commands are in the launch kit
- [ ] 3. Test it for real: run `/im-scared` in another project, then ask for a feature in a **new** session and check the 🪜 line appears · 10m · you
- [ ] 4. Record a 20-second demo GIF · 10m · you: the shot list is in the launch kit
- [ ] 5. Make a social preview image (1280×640) and set it in repo Settings · 10m · both: the agent can generate one, you upload it
- [ ] 6. Add repo topics and tag v0.1.0 · 2m · you: the commands are in the launch kit
- [ ] 7. Post the tester request in r/ClaudeAI or the Claude Discord · 5m · you: post drafted in the launch kit
- [ ] 8. Fix the #1 thing testers trip on · 10m · both
- [ ] 9. Confirm 3 testers ticked a rung. **This is launch.** · you
- [ ] 10. Post publicly: Show HN, X, r/SideProject · 10m · you: all three drafted in the launch kit
- [ ] 11. Submit to the Claude plugin directory and awesome-claude-skills · 10m · both

## Later (after launch)

- More stack ladders (via contributions)
- Ladder per agent quirks if Codex or Cursor testers report issues

## Log

- 2026-10-16 ladder created
- 2026-10-16 #1 done
- 2026-10-16 #2 done, repo public

---

## Rules for the agent

Read this before starting any new feature or non-trivial change. These rules exist to make launch feel small. Follow them quietly.

**When to nudge**
- Only when starting a feature or change you estimate takes 3 minutes or more.
- Never on bug fixes, questions, small edits or refactors, or when the user is debugging, frustrated or in a hurry.
- At most one nudge per task and two per session. A before-line plus its end-of-task offer count as one nudge.

**What to offer**
- Skip `[~]` rungs until their snooze date passes.
- Before you build: the lowest `[ ]` `you` or `both` rung, as something to do *while you build*, even if an `agent` rung sits below it. Skip a rung that only works once an earlier unticked rung is done. If it won't fit in the build time, offer only its first slice ("just create the account, we'll connect it later").
- At the end of the task: if the lowest `[ ]` rung is an `agent` rung, offer it in one line: "Want me to add a rollback script? ~2 min."

**How to say it**
- One line, before you start the work:
  `🪜 While I build this (~6 min): buy the domain (5 min). I'll shortlist 5 available names at the end.`
- Then build the feature, which always comes first. If you promised prep (name shortlist, DNS records, env var list, copy draft), deliver it at the end of the turn, kept short.
- If the rung answers one of their fears, you may say so in a few words: "(that's the surprise-bill fear handled)".
- No guilt, no countdowns, no "you should really launch", no full ladder, no count of what's left. Small steps, not the big picture.

**State**
- When you offer a rung, log `offered #n` with the date.
- Before picking a rung, check the Log. An `offered #n` from an earlier session with no done or "not now" after it was ignored: mark it `[~] (until <offered date + 2 days>)` and log `#n snoozed (no answer)`.
- When the user says done, tick it `[x]` and log it. Ask "done?" at most once, at the end of the turn.
- When the user says "not now" or ignores it, mark it `[~] (until <date + 2 days>)` and offer the next rung next time. Never repeat an offer in the same session.
- When the user asks for an idea that fits Later, add it there. Don't comment on it.
- When the user says they want to launch now, drop the caps and list every remaining rung, in order, with times.

**Never**
- Delay, shrink or refuse the work they asked for.
- Sign up, buy or pay for anything yourself. You prepare, they click.
- Rewrite "Launch means" or the fears without asking.
