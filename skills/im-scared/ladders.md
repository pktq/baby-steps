# Starter ladders

Pick the closest stack, then tailor the ladder to the interview (see SKILL.md, step 3). Hosts named here are examples of free or cheap defaults. Prefer whatever the repo already uses or the user names.

Times are honest estimates for someone doing it for the first time with the agent's prep in hand.

## Universal spine

Every ladder is a version of this. Use it directly if no stack below fits.

1. Pick a name and buy the domain · 5m · both: the agent shortlists 5 available names, you buy one
2. Create the hosting account · 5m · you
3. Deploy a hello-world page to a real URL · 10m · both: the agent writes the config, you click connect
4. Point the domain at it · 10m · both: the agent gives the exact DNS records, you paste them
5. Deploy the real app, even half-broken · 10m · both
6. Set a spend cap and a billing alert · 3m · you. *Answers: surprise bill*
7. Move secrets into the host's env vars · 10m · both: the agent lists every var, you paste values
8. Add error tracking · 5m · both. *Answers: it breaks and I don't know*
9. Write a rollback command and test it once · 5m · agent. *Answers: a bad deploy*
10. Add a basic rate limit or abuse guard · 5m · agent. *Answers: too many users, bots*
11. Add privacy-friendly analytics · 5m · both
12. Write a one-line pitch and take one screenshot · 10m · both: the agent drafts 3 pitches
13. Add a privacy page, if you collect any data · 5m · agent drafts, you skim
14. Send the link to your 3 people · 5m · you: the agent drafts the message
15. Post it publicly in one place · 10m · you: the agent drafts the post

## Web app (Next.js, Remix, SvelteKit, Nuxt)

Host: Vercel, Netlify or Cloudflare Pages. Database: whatever is in the repo (Supabase, Neon, Turso).

- Rung 3 becomes: import the repo on the host, which deploys on push.
- After rung 5, add: production database created and migrated · 10m · both.
- If auth exists: set the production callback URLs · 5m · both. This is the most common first-deploy break.
- Error tracking: Sentry free tier. Analytics: Plausible, Umami or Vercel Analytics.

## Static site or landing page

Host: GitHub Pages, Netlify or Cloudflare Pages. A short ladder: rungs 1-4, 11, 12, 14, 15. Drop 6-10 unless there is a form or a backend.

## Python or Node API (FastAPI, Flask, Django, Express)

Host: Railway, Render or Fly.io, or a $5 VPS if they asked for one.

- Rung 3 becomes: deploy a `/health` endpoint that returns `ok`.
- Add a Dockerfile or Procfile · agent, before rung 3.
- After rung 5: production database and migrations · 10m · both.
- Rung 9: redeploy the previous image or commit, written as one command in the README.
- On a VPS, add: HTTPS via Caddy · 10m · agent writes the Caddyfile. Also add a firewall that allows only 22, 80 and 443 · 5m · agent gives the commands.

## Discord or Telegram bot

Host: Railway, Fly.io or a small VPS. There is no domain, so drop rungs 1 and 4.

- Rung 3 becomes: the bot runs 24/7 off your laptop and answers `/ping`.
- Add: the bot token lives in env vars and has been rotated if it was ever committed · 5m · both.
- Rung 10: per-user cooldowns · agent.
- Rung 14: add it to one server you don't own.

## Mobile app (Expo, React Native, Flutter)

- Rung 2 becomes: Apple Developer ($99/yr) and/or Google Play ($25 once). Say the price up front, as it is the scary part.
- Rung 3 becomes: get a build onto your own phone via TestFlight or internal testing · 10m · both.
- Add: privacy policy URL (both stores require one) · agent drafts.
- Add: store screenshots and description · 10m · both.
- Add: submit for review early, even before it's done. Review lag is the real deadline.
- Rung 14: 3 people via TestFlight or internal testing before the public listing.

## Browser extension

- Rung 2 becomes: Chrome Web Store developer account ($5 once).
- Rung 3 becomes: upload an unlisted build. Unlisted builds are only reachable by link.
- Add: a permissions justification and privacy fields · agent drafts.
- Public launch = switch from unlisted to public.

## CLI tool or library (npm, PyPI, crates)

- Drop the hosting rungs.
- Rung 1 becomes: check the package name is free and reserve it with a 0.0.1 publish · 5m · both.
- Add: the README has install, a 3-line example and one GIF · agent drafts, you record.
- Add: CI that runs tests and publishes on tag · agent.
- Rung 9: `npm deprecate` or `yank` is your rollback, so write the command down.
- Rung 15: Show HN, the language subreddit or the tool's Discord.

## Game (Roblox, itch.io, Steam)

- Roblox: rung 3 becomes publishing the place as private. Public launch = flipping it to public.
- itch.io: rung 3 becomes uploading a restricted build, with the page set to draft.
- Steam: the $100 fee and 30-day wait go first on the ladder, because the wait is the deadline.
- Add: one 15-second gameplay clip · you record, the agent writes the caption.

## Desktop app (Electron, Tauri)

- Rung 3 becomes: a GitHub Release with one unsigned build for your own OS.
- Add: code signing, flagged as optional for the first 3 people. Unsigned builds work after a warning.
- Add: auto-update via the framework's updater · agent.
