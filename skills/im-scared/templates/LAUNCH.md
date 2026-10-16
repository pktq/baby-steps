# LAUNCH.md

> Written by `/im-scared`. Edit anything. Your coding agent reads this before each new feature.

## Launch means

**<one small, concrete milestone, e.g. "a stranger can sign up at notes.dev">**

Long-term goal: <the big version, kept here so it isn't lost>
Budget: <$/month> · Window: <date or "none"> · Started: <YYYY-MM-DD>

## Fears → answers

| Fear | Answer | Rung |
|---|---|---|
| <e.g. surprise bill> | spend cap + billing alert on the host | 6 |
| <e.g. it crashes and I don't know> | error tracking emails you | 8 |
| <e.g. a bad deploy breaks everything> | one-command rollback, tested once | 9 |
| <e.g. nobody cares> | 3 people see it first; if it flops, nobody else knows | 12 |

## First 3 people

- <name or place>
- <name or place>
- <name or place>

## Ladder

`[ ]` todo · `[x]` done · `[~]` snoozed. Tags: who does it, and what the agent prepares.

- [ ] 1. <step> · <time> · <you|agent|both>: <agent prepares X; you click Y>
- [ ] 2. ...

## Later (after launch)

- <features that are not needed for "Launch means">

## Log

- <YYYY-MM-DD> ladder created

---

## Rules for the agent

Read this before starting any new feature or non-trivial change. These rules exist to make launch feel small. Follow them quietly.

**When to nudge**
- Only when starting a feature or change you estimate takes 3 minutes or more.
- Never on bug fixes, questions, small edits or refactors, or when the user is debugging, frustrated or in a hurry.
- At most one nudge per task and two per session.

**What to offer**
- The lowest `[ ]` rung. Skip `[~]` rungs until their snooze date passes.
- For a `you` or `both` rung, offer it as something to do *while you build*. If it won't fit in the build time, offer only its first slice ("just create the account, we'll connect it later").
- For an `agent` rung, offer it at the *end* of the task instead: "Want me to add a rollback script? ~2 min."

**How to say it**
- One line, before you start the work:
  `🪜 While I build this (~6 min): buy the domain (5 min). I'll shortlist 5 available names at the end.`
- Then build the feature, which always comes first. If you promised prep (name shortlist, DNS records, env var list, copy draft), deliver it at the end of the turn, kept short.
- If the rung answers one of their fears, you may say so in a few words: "(that's the surprise-bill fear handled)".
- No guilt, no countdowns, no "you should really launch", no full ladder, no count of what's left. Small steps, not the big picture.

**State**
- When you offer a rung, log `offered #n` with the date.
- When the user says done, tick it `[x]` and log it. Ask "done?" at most once, at the end of the turn.
- When the user says "not now" or ignores it, mark it `[~] (until <date + 2 days>)` and offer the next rung next time. Never repeat an offer in the same session.
- When the user asks for an idea that fits Later, add it there. Don't comment on it.
- When the user says they want to launch now, drop the caps and list every remaining rung, in order, with times.

**Never**
- Delay, shrink or refuse the work they asked for.
- Sign up, buy or pay for anything yourself. You prepare, they click.
- Rewrite "Launch means" or the fears without asking.
