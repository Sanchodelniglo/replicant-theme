# Replicant Runner Theme

[![VS Code Marketplace](https://img.shields.io/visual-studio-marketplace/v/sanchodelniglo.replicant-theme?style=flat-square&label=VS%20Code%20Marketplace&color=45c9a0)](https://marketplace.visualstudio.com/items?itemName=sanchodelniglo.replicant-theme)
[![Installs](https://img.shields.io/visual-studio-marketplace/i/sanchodelniglo.replicant-theme?style=flat-square&color=45c9a0)](https://marketplace.visualstudio.com/items?itemName=sanchodelniglo.replicant-theme)
[![License: MIT](https://img.shields.io/badge/License-MIT-45c9a0.svg?style=flat-square)](LICENSE)
[![Ko-fi](https://img.shields.io/badge/Ko--fi-Support%20Me-ff5e5b?style=flat-square&logo=ko-fi&logoColor=white)](https://ko-fi.com/sanchodelniglo)

A green-and-red cyberpunk theme for VS Code, in **dark** and **light**, tuned so you can read it for eight hours straight.

> **This is a fork, not an original theme.** All the colour work is
> [**punk-runner**](https://marketplace.visualstudio.com/items?itemName=TheEdgesofBen.punk-runner)
> by **[TheEdgesofBen](https://marketplace.visualstudio.com/publishers/TheEdgesofBen)** —
> originally an Atom theme, later ported to VS Code by the same author. Replicant Runner
> only retunes it for contrast. If you like how it looks, that's their eye, not mine.
> See [NOTICE.md](NOTICE.md).

## Screenshots

### Replicant Runner (dark)

![Replicant Runner dark](https://raw.githubusercontent.com/Sanchodelniglo/replicant-theme/main/screenshots/dark.png)

### Replicant Runner Light

![Replicant Runner light](https://raw.githubusercontent.com/Sanchodelniglo/replicant-theme/main/screenshots/light.png)

## Two variants, one palette

Both variants share the same three colour families and the same rules about what each one means.

| Role | Dark | Light |
|---|---|---|
| Functions, operators, UI accent | aqua `#45c9a0` | aqua `#057761` |
| Keywords, variables | coral `#f26d84` | coral `#cf1131` |
| js/ts keywords, sigils | magenta `#dd6b93` | magenta `#c5187a` |
| Properties, parameters | rose `#d98ea0` | dusty rose `#af435e` |
| Strings | green `#67b492` | leaf green `#1c7744` |
| Classes, types, builtins | violet `#a371f7` family | violet `#733eec` family |
| Numbers, language constants | green `#86c0a4` | amber `#9b5a04` |
| Regex, escapes | green `#71bca2` | cyan `#0b7282` |
| Comments | muted green `#63a385` | muted sage `#507368` |

The light variant sits on one warm cream surface (`#f5f3ee`) for the editor, sidebar, terminal
and status bar. Lists, tabs and the current line step down from it in three tones. Sidebar section
headers are pastel coral blocks with crimson caps, a nod to the dark theme's red bars.

## What the retune changes

- **Contrast raised to WCAG AA** — no token or UI pair sits below 4.5:1 on its own surface, in either variant. Dark body text reads at 9:1, light at 9:1, coloured tokens between 4.5:1 and 6:1 on light and 5.3:1 and 9:1 on dark.
- **State colours de-collided** — selection, find match, word highlight, and hover highlight no longer share a hue, so overlapping states stay readable. Each state signals by hue and border, not by alpha alone.
- **Semantic highlighting enabled**, with explicit colours for `enumMember`, `variable.constant`, and `variable.defaultLibrary`. The light variant also colours `parameter`, `property`, `number`, `string` and `regexp`.
- **Light variant generated, not hand-painted** — every dark colour maps to a role (hue, saturation, target contrast) and its lightness is solved against the cream paper, so the two files stay in step.

403 workbench colours, 258 token rules, 3 semantic token rules per variant.

## Install

### From the Marketplace

`Cmd+P` → `ext install sanchodelniglo.replicant-theme`

### From source

```bash
git clone https://github.com/Sanchodelniglo/replicant-theme
cd replicant-theme
npx @vscode/vsce package
code --install-extension replicant-theme-*.vsix
```

### Live-editing the theme

Symlink the repo into your extensions dir, then reload VS Code:

```bash
ln -s "$PWD" ~/.vscode/extensions/replicant-theme
```

Theme JSON edits apply on save — no reload needed once the extension is loaded.

## Activate

`Cmd+K Cmd+T` → **Replicant Runner** (dark) or **Replicant Runner Light**.

To follow the OS appearance, set in `settings.json`:

```json
"window.autoDetectColorScheme": true,
"workbench.preferredDarkColorTheme": "Replicant Runner",
"workbench.preferredLightColorTheme": "Replicant Runner Light"
```

## Credits

**punk-runner** by **[TheEdgesofBen](https://marketplace.visualstudio.com/publishers/TheEdgesofBen)** —
the palette, the green-and-red cyberpunk direction, and most of the token
rules are theirs. Go install
[the original](https://marketplace.visualstudio.com/items?itemName=TheEdgesofBen.punk-runner)
and rate it.

Replicant Runner's retune work is MIT licensed — see [LICENSE](LICENSE). The upstream
theme it builds on ships no licence of its own; attribution and the full retune
list live in [NOTICE.md](NOTICE.md).
