# Punk Runner V2

A green-and-red cyberpunk dark theme for VS Code — [punk-runner](https://marketplace.visualstudio.com/items?itemName=TheEdgesofBen.punk-runner) by TheEdgesofBen, retuned for readability.

## What changed vs. the original

- **Contrast retuned for WCAG AA** — foregrounds lifted or dimmed against the editor background so no token pair sits below 4.5:1.
- **State colours de-collided** — selection, find match, word highlight, and hover highlight no longer share a hue, so overlapping states stay readable.
- **Semantic highlighting enabled**, with explicit colours for `enumMember`, `variable.constant`, and `variable.defaultLibrary`.

298 workbench colours, 241 token rules, 3 semantic token rules.

## Install

### From source

```bash
git clone https://github.com/Sanchodelniglo/punk-runner-v2-theme
cd punk-runner-v2-theme
npx @vscode/vsce package
code --install-extension punk-runner-v2-theme-0.3.0.vsix
```

### Live-editing the theme

Symlink the repo into your extensions dir, then reload VS Code:

```bash
ln -s "$PWD" ~/.vscode/extensions/punk-runner-v2-theme
```

Theme JSON edits apply on save — no reload needed once the extension is loaded.

## Activate

`Cmd+K Cmd+T` → **Punk Runner V2**.

## Credits

Derived from **punk-runner** by [TheEdgesofBen](https://marketplace.visualstudio.com/items?itemName=TheEdgesofBen.punk-runner). The upstream extension ships no LICENSE file — check with the original author before republishing this fork to the Marketplace.
