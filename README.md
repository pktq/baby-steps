# Baby Steps 🪜

**A skill for Claude Code, Codex, Cursor and other coding agents, for devs who are always "one more feature" away from launching.**

You know the loop. One more feature, one more bug fix, almost done, launching soon. Then it's two months later and someone else shipped your idea.

Usually the problem isn't the code. Launch feels like one huge, unfamiliar, scary event: domains, DNS, servers, HTTPS, what if it crashes, what if nobody comes, what if too many people come. So you keep doing the part that feels safe, which is building.

Baby Steps breaks launch into a dozen boring 5-minute steps. Claude hands you **one** of them while it builds your next feature, so you'd be idle anyway.

```
you:    add dark mode to the settings page

claude: 🪜 While I build this (~6 min): buy the domain (5 min).
        I'll shortlist 5 available names at the end.

        ...builds dark mode...

        Done. Dark mode is in settings, persisted per user.
        Domain ideas (all available): notely.app, jotbox.dev, ...
```

By launch day your app has lived at a real URL for weeks. "Launching" just means sharing the link.

## How it works

**1. `/im-scared` interviews you.** It asks one question at a time and takes about 5 minutes. It reads your repo first, so it doesn't ask what it can see.

- Picture launch day. What goes wrong?
- What does "launched" actually mean to you?
- What's the smallest version a stranger would get value from?
- Which of these have you never done: domain, DNS, hosting, env vars, payments...?
- Budget? Deadline?
- What would make you quietly abandon this?
- Who are 3 people you could show it to first?

**2. It writes `LAUNCH.md`** in your project:

```markdown
## Launch means
**A stranger can sign up at notely.app**

## Fears → answers
| Fear                      | Answer                                  | Rung |
|---------------------------|-----------------------------------------|------|
| surprise $2,000 bill      | spend cap + billing alert               | 6    |
| it crashes, I don't know  | error tracking emails me                | 8    |
| bad deploy breaks it all  | one-command rollback, tested once       | 9    |
| nobody cares              | 3 friends see it first. Flop = private. | 14   |

## Ladder
- [x] 1. Pick a name, buy the domain · 5m · both
- [x] 2. Create the Vercel account · 5m · you
- [x] 3. Deploy hello world to a real URL · 10m · both
- [ ] 4. Point the domain at it · 10m · both: agent gives the DNS records
- [ ] 5. Deploy the real app, even half-broken · 10m · both
...
```

Every fear gets a concrete answer. Every step is 10 minutes or less. Steps are ordered by how scary and reversible they are, so a real URL comes early and the public post comes last.

**3. From then on, Claude nudges you, but only a little.**

- One small step per feature, offered *before* it starts building, so you do it in parallel.
- At most 2 per session. Never on bug fixes, quick edits or while you're debugging.
- "Not now" snoozes the step. There's no guilt, no countdown and no "you should really launch."
- Claude does the prep (DNS records, Dockerfile, env var list, post drafts). You only click the parts that need your account or card.
- The feature you asked for always gets built first.

## Install

**With [skills.sh](https://skills.sh)** (works with Claude Code and other agents):

```bash
npx skills add pktq/baby-steps -g
```

**Manually:**

```bash
git clone --depth 1 https://github.com/pktq/baby-steps /tmp/baby-steps && cp -r /tmp/baby-steps/skills/* ~/.claude/skills/
```

On Windows (PowerShell):

```powershell
git clone --depth 1 https://github.com/pktq/baby-steps $env:TEMP\baby-steps; Copy-Item -Recurse $env:TEMP\baby-steps\skills\* $HOME\.claude\skills\
```

**As a Claude Code plugin:**

```
/plugin marketplace add pktq/baby-steps
/plugin install baby-steps@baby-steps
```

Plugin skills are namespaced, so with this route the commands are `/baby-steps:im-scared` and `/baby-steps:im-a-big-dev-now`. The other two routes give you plain `/im-scared`.

## Commands

| Command | What it does |
|---|---|
| `/im-scared` | Runs the interview, or shows status if `LAUNCH.md` exists |
| `/im-scared status` | Progress bar, fears covered, next step |
| `/im-scared next` | Gives you the next step right now |
| `/im-scared done 4` | Ticks step 4 |
| `/im-scared redo` | Re-runs the interview |
| `/im-a-big-dev-now` | Turns the nudges off and keeps `LAUNCH.md`. `/im-scared` turns them back on |

## Uninstall

1. Run `/im-a-big-dev-now` in each project that uses it. This removes the block from `CLAUDE.md` or `AGENTS.md`.
2. Delete the skills: `npx skills remove --global im-scared im-a-big-dev-now`, or delete `~/.claude/skills/im-scared` and `~/.claude/skills/im-a-big-dev-now`. Plugin users run `/plugin uninstall baby-steps@baby-steps`.
3. `LAUNCH.md` is yours. Keep it or delete it.

## FAQ

**How does it nudge me in later sessions?**
Onboarding adds a 4-line block to your project's `CLAUDE.md` (or `AGENTS.md` for other agents) that points the agent at `LAUNCH.md`. The nudge rules live at the bottom of `LAUNCH.md`, so you can read and change them. Installed as a Claude Code plugin, a small hook also puts the next step in front of Claude on every prompt, so it doesn't have to remember to check. The hook only reads `LAUNCH.md`, runs nothing else, and stays silent without the block. `/im-a-big-dev-now` removes the block and turns the nudges off.

**Will it nag me?**
It's built not to: one line per feature, two per session at most, and snoozes are respected. If it still annoys you, edit "Rules for the agent" in `LAUNCH.md` and it follows your version.

**Does it slow Claude down?**
No. It's one line before the work starts. The feature always comes first.

**Which stacks does it know?**
Starter ladders cover web apps, static sites, APIs, Discord and Telegram bots, mobile, browser extensions, CLIs and libraries, games and desktop apps. Anything else falls back to a universal ladder. See [`ladders.md`](skills/im-scared/ladders.md).

**Does it buy things or sign me up for services?**
Never. Claude prepares, you click.

**Does it work outside Claude Code?**
Yes. It follows the open [Agent Skills](https://agentskills.io) format, so `npx skills add` installs it into Codex, Cursor, Gemini CLI and others. In agents without slash commands, just say "run im-scared". Nudges go through `AGENTS.md` there instead of `CLAUDE.md`.

**Claude.ai instead of Claude Code?**
Paste the "Rules for the agent" section from [the template](skills/im-scared/templates/LAUNCH.md) into your project instructions and keep `LAUNCH.md` as a project file.

## Eating our own cooking

Baby Steps is being launched with Baby Steps. Its own ladder is in [`LAUNCH.md`](LAUNCH.md). Watch the ticks.

## Share your ladder

If this got you to launch, post your `LAUNCH.md` with the ticks and tag the repo. Know the scary parts of a stack the ladders don't cover? [Add a ladder](CONTRIBUTING.md).

## License

MIT
