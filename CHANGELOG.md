# Changelog

## Unreleased

- Plugin hook: on every prompt, puts the next step from `LAUNCH.md` in front of Claude, so nudges no longer depend on it remembering to check
- An offer with no answer by the next session is snoozed, so the ladder doesn't get stuck
- The before-build line always offers your next step, even when the agent's step comes first; agent steps are offered at the end

## 0.1.0 · 2026-10-16

First release.

- `/im-scared`: a fear-first launch interview that writes `LAUNCH.md` (launch definition, fears → answers, a ladder of 5-10 minute steps)
- Per-feature nudges through a block in `CLAUDE.md` or `AGENTS.md`, capped at one per task and two per session
- `/im-scared status`, `next`, `done <n>`, `redo`
- `/im-a-big-dev-now` turns the nudges off and keeps `LAUNCH.md`
- Starter ladders for web apps, static sites, APIs, bots, mobile, browser extensions, CLIs and libraries, games and desktop apps
- Install via `npx skills`, a manual copy, or as a Claude Code plugin
