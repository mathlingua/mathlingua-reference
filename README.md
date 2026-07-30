# The Mathlingua Reference

A user-focused guide to writing mathematical knowledge in Mathlingua.

The reference is itself a **Mathlingua collection**: the pages live under
[`content/`](content/) as `.mlg` prose files and are built, checked, and served
with the `mlg` command from the sibling
[`mathlingua`](https://github.com/mathlingua/mathlingua) tooling repository.

## Layout

- `content/` — the pages, as `.mlg` files (`Title:`, `SectionTitle:`,
  `SubsectionTitle:`, and `Text:` prose blocks).
- `content/**/toc` — per-directory tables of contents that set the sidebar
  order and titles.
- `mlg.json` — collection configuration.
- `docs/` — the exported static site (generated; git-ignored).

Prose is Markdown with LaTeX. Mathlingua examples are written in
` ```mlg-fragment ` fenced blocks: they are syntax-highlighted in the rendered
view but are not type-checked, so they may freely reference commands that are
not defined in the reference itself.

## Building

The `Makefile` drives everything through `mlg`. Point `MATHLINGUA_DIR` at your
checkout of the tooling repo (default `../mathlingua`).

```bash
make check   # syntax-check every page
make serve   # live viewer at http://localhost:3000
make build   # export the static site into ./docs
make clean   # remove ./docs
```

> **Note:** `mlg.json` sets `formatOnCheck: false`. `mlg format` reflows the
> text inside `Text:` blocks to the margin, which would collapse Markdown lists
> and the code inside ` ```mlg-fragment ` blocks, so the reference is not
> auto-formatted.
