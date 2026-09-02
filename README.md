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

Prose is Markdown with LaTeX. A fenced block tagged `mlg` is parsed, checked in
the scope of its containing item, and rendered as Mathlingua. A block tagged
`mlg-fragment` is syntax-highlighted but not checked, so it is appropriate for
partial examples and may reference commands not defined in the reference.

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
