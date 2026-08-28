# Replicant

[![VS Code Marketplace](https://img.shields.io/visual-studio-marketplace/v/sanchodelniglo.replicant-theme?style=flat-square&label=VS%20Code%20Marketplace&color=45c9a0)](https://marketplace.visualstudio.com/items?itemName=sanchodelniglo.replicant-theme)
[![Installs](https://img.shields.io/visual-studio-marketplace/i/sanchodelniglo.replicant-theme?style=flat-square&color=1c3a34)](https://marketplace.visualstudio.com/items?itemName=sanchodelniglo.replicant-theme)
[![License: MIT](https://img.shields.io/badge/License-MIT-45c9a0.svg?style=flat-square)](LICENSE)
[![Ko-fi](https://img.shields.io/badge/Ko--fi-Support%20Me-ff5e5b?style=flat-square&logo=ko-fi&logoColor=white)](https://ko-fi.com/sanchodelniglo)

A green-and-red cyberpunk dark theme for VS Code, tuned so you can read it for eight hours straight.

> **This is a fork, not an original theme.** All the colour work is
> [**punk-runner**](https://marketplace.visualstudio.com/items?itemName=TheEdgesofBen.punk-runner)
> by **[TheEdgesofBen](https://marketplace.visualstudio.com/publishers/TheEdgesofBen)** —
> originally an Atom theme, later ported to VS Code by the same author. Replicant
> only retunes it for contrast. If you like how it looks, that's their eye, not mine.
> See [NOTICE.md](NOTICE.md).

## What the retune changes

- **Contrast raised to WCAG AA** — foregrounds lifted or dimmed against the editor background so no token pair sits below 4.5:1.
- **State colours de-collided** — selection, find match, word highlight, and hover highlight no longer share a hue, so overlapping states stay readable.
- **Semantic highlighting enabled**, with explicit colours for `enumMember`, `variable.constant`, and `variable.defaultLibrary`.

298 workbench colours, 241 token rules, 3 semantic token rules.

## Install

### From the Marketplace

`Cmd+P` → `ext install sanchodelniglo.replicant-theme`

### From source

```bash
git clone https://github.com/Sanchodelniglo/replicant-theme
cd replicant-theme
npx @vscode/vsce package
code --install-extension replicant-theme-0.0.1.vsix
```

### Live-editing the theme

Symlink the repo into your extensions dir, then reload VS Code:

```bash
ln -s "$PWD" ~/.vscode/extensions/replicant-theme
```

Theme JSON edits apply on save — no reload needed once the extension is loaded.

## Activate

`Cmd+K Cmd+T` → **Replicant - Dark**.

## Credits

**punk-runner** by **[TheEdgesofBen](https://marketplace.visualstudio.com/publishers/TheEdgesofBen)** —
the palette, the green-and-red cyberpunk direction, and most of the 241 token
rules are theirs. Go install
[the original](https://marketplace.visualstudio.com/items?itemName=TheEdgesofBen.punk-runner)
and rate it.

Replicant's retune work is MIT licensed — see [LICENSE](LICENSE). The upstream
theme it builds on ships no licence of its own; attribution and the full retune
list live in [NOTICE.md](NOTICE.md).
