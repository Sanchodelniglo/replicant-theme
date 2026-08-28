# Notice & attribution

Replicant is a **derivative work**. It is not an original theme.

## Original

**punk-runner** — by **TheEdgesofBen**
<https://marketplace.visualstudio.com/items?itemName=TheEdgesofBen.punk-runner>

Version 0.0.5 of that extension is the direct ancestor of everything Replicant ships in
`themes/`. The palette, the green-and-red cyberpunk direction, and the large
majority of the 241 token rules originate there. Per its own README, the VS Code
extension is itself a remake of an Atom theme of the same name by the same
author.

## What this fork changes

- Contrast retuned across the palette for WCAG AA against the editor background.
- Editor state colours (selection, find match, word highlight, hover) separated
  by hue so overlapping states stay distinguishable.
- Semantic highlighting enabled, with rules for `enumMember`,
  `variable.constant`, and `variable.defaultLibrary`.

## Licensing status — unresolved

The upstream extension ships **no LICENSE file** and states no licence terms in
its README, Marketplace listing, or `package.json`. Absent a licence grant, the
original colour work remains under the author's exclusive copyright by default.

Consequences:

- **Private/local use of this fork is fine.**
- **Publishing it to the Marketplace is not, until TheEdgesofBen grants
  permission.** Ask first, in writing, and record the answer in this file.

The modifications listed above are offered by Romain Grossard under the MIT
Licence, but that grant covers only the changes — it cannot and does not
relicense the underlying work.
