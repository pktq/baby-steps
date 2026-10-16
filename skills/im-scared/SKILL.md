---
name: im-scared
description: Baby Steps, a launch coach for devs stuck in "one more feature" mode. /im-scared runs a short interview about what scares you about launching, then writes LAUNCH.md with a deliberately small launch goal, your fears mapped to concrete fixes, and a ladder of 5-10 minute steps. From then on your coding agent suggests one small launch step per feature, for you to do while it builds. Use when the user runs /im-scared, asks for help launching, shipping or deploying a side project, or says they keep putting off launch.
license: MIT
argument-hint: "[status | next | done <n> | redo]"
---

# Baby Steps

Launching feels huge because it is one big unfamiliar thing saved for the end. This skill turns it into a dozen boring 5-minute things, spread across the build and done while your agent is busy anyway. By launch day the app has lived at a real URL for weeks, and "launching" means sharing a link.

## Routing

Check the arguments the user passed (`$ARGUMENTS` in Claude Code) and whether `LAUNCH.md` exists in the project root.

| Situation | Do |
|---|---|
| No `LAUNCH.md`, or `redo` | **Onboarding** |
| `LAUNCH.md` exists, no args, or `status` | **Status** |
| `next` | Give the next nudge now, ignoring the per-session cap |
| `done <n>` | Tick rung n, log it with today's date, reply in one line. If it answers one of their fears, name the fear. |

## Onboarding

### 1. Look before asking

Scan the repo quietly: README, package manifests, framework config, deploy files (`Dockerfile`, `vercel.json`, `fly.toml`, `Procfile`, `netlify.toml`, `.github/workflows`), `.env.example`, git remotes. Work out the stack, what is already deployed, and which services it uses (database, auth, payments, email).

Never ask what the repo already answers. Open with one line of what you saw, then the first question:

> Looks like a Next.js app with Supabase, nothing deployed yet. A few questions, one at a time, about 5 minutes.

### 2. Interview

One question per message, then wait for the answer. Ask one short follow-up only if the answer is vague, and accept "skip". Use the tone of a calm friend who has shipped things before: no pep talk, no "great question", no lecture.

1. **What is it, in one sentence, and who is it for?** Skip if the README makes it obvious.
2. **Picture launch day. What goes wrong?** Get the whole list: crashes, a surprise bill, getting hacked, nobody coming, too many people coming, a stranger finding a bug, looking stupid. Naming them is half the fix. Every fear gets an answer in the ladder.
3. **What does "launched" mean to you?** If the answer is big ("1,000 paying users"), keep it as the long-term goal and propose a tiny first milestone: "a stranger can use it at a real URL" or "3 people outside your head tried it."
4. **What is the smallest version a stranger would get value from?** List the features they have or plan, and sort them together into "needed for launch" and "after launch."
5. **Which of these have you never done?** Domain, DNS, hosting, HTTPS, env vars or secrets in production, a production database, auth, payments, transactional email, analytics, error tracking, a privacy page, app store review. Only list the ones that apply to this stack.
6. **Monthly budget, and is there a date or a market window?** "$0 and no date" is a fine answer.
7. **What would make you quietly abandon this?** Treat the answer as a risk to design around, not something to argue with.
8. **Who are 3 people you could show it to first?** Names or "a Discord I'm in" both work.

### 3. Write LAUNCH.md

Copy `templates/LAUNCH.md` from this skill's folder into the project root and fill it in. Build the ladder from the matching stack in `ladders.md`, then tailor it:

- **Keep the launch definition tiny.** Put the big goal on the line below it.
- **Give every fear an answer rung.** Fears that no code can fix ("nobody cares") get the soft-launch answer: three people see it first, and if it flops nobody else ever knows.
- **Keep every rung at 10 minutes or less.** Split anything bigger.
- **Order the ladder by fear and reversibility, lowest first.** Get a real URL by rung 3-5. Public posting goes last. Rollback and spend caps come before anything that could cost money or users.
- **Tag each rung `you`, `agent` or `both`**, and say what the agent prepares so the human part is only clicking. That split is what makes "5 minutes" true.
- **Explain anything they have never done** (from Q5) in one plain line on the rung, e.g. "DNS = telling the internet your domain points at your server."
- **Tick rungs the repo shows are already done.**
- **Move after-launch features from Q4 to Later.**

### 4. Wire it into the project

Append this block to the project's agent instructions file, and tell the user in one line which file you used. Without it, nudges stop in the next session, because a skill only loads when invoked.

- `CLAUDE.md` for Claude Code. `AGENTS.md` for Codex, Cursor, Gemini CLI, Copilot and most other agents.
- If both files exist, add it to both, so nudges work in whichever agent the user opens next.
- Create a file only if neither exists, picking the one for the agent you are.

```markdown
<!-- baby-steps -->
## Launch ladder
Before starting a new feature or non-trivial change, read `LAUNCH.md` and follow its "Rules for the agent" section. At most one launch nudge per task. Never delay the requested work.
<!-- /baby-steps -->
```

If the block is already there, leave it.

### 5. Close

Show three things only:

1. The launch definition (one line)
2. The fear map (compact: fear → answer)
3. The first rung, with an offer to do it right now

Do not show the whole ladder. It is in `LAUNCH.md`, and `/im-scared status` shows progress.

## Status

If the `<!-- baby-steps -->` block is missing from the project's instructions file (the user ran `/im-a-big-dev-now`), add it back as in onboarding step 4 and say in one line that nudges are back on.

Keep it under 10 lines:

```
Launch means: a stranger can sign up at notes.dev
▓▓▓▓░░░░░░ 4/10 · started 6 days ago
Done lately: domain bought, hello world live, DNS pointed
Fears covered: surprise bill, bad deploy
Next: add error tracking (5m, both)
```

## Nudges during normal work

The rules live in the "Rules for the agent" section of `LAUNCH.md`, so they work in future sessions without this skill loaded. That section is the source of truth. If the user edits it, follow their version.
