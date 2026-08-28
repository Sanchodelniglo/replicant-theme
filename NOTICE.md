# About this theme, and whose it really is

Replicant Runner is somebody else's theme with my fingerprints on it.

## The theme this comes from

The theme is **punk-runner**, by **TheEdgesofBen**.

- <https://marketplace.visualstudio.com/items?itemName=TheEdgesofBen.punk-runner>

They wrote it first for Atom, then rebuilt it for VS Code when Atom went away.
That VS Code extension is what sits underneath everything in `themes/`. The
green, the red, the decision that a code editor could look like a rain-soaked
street at 2am and still be a place you get work done — all of that is theirs.
So are most of the 241 token rules. I didn't invent this look. I found it, used
it for months, and grew attached to it.

If you like how Replicant Runner looks, go install
[the original](https://marketplace.visualstudio.com/items?itemName=TheEdgesofBen.punk-runner)
and leave them a rating. That is the whole point of this file.

## What I actually did

I have tired eyes and long days, and there were a few places where punk-runner
and I disagreed about brightness. So:

- I lifted or dimmed foregrounds until nothing sat below 4.5:1 against the
  editor background — WCAG AA across the palette.
- I pulled selection, find match, word highlight, and hover apart by hue, so
  when two of them land on the same text you can still tell which is which.
- I turned on semantic highlighting and gave `enumMember`, `variable.constant`,
  and `variable.defaultLibrary` colours of their own.

That's it. That's the fork. It's a tuning pass, not a redesign, and I tried hard
to keep it sounding like the same instrument.

— Sanchodelniglo
