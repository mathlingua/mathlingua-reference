# `mlg init`

`mlg init` creates a starter MathLingua collection in the current directory: it
writes an `mlg.json` config file and creates an empty `content/` directory.

Use it when beginning a new collection. After initialization, run:

```text
mlg check
mlg view
```

If `content/` already exists it is left alone. If `mlg.json` already exists but
is missing required fields, `mlg init` offers (when run interactively) to add
those fields with their defaults; run without a terminal, it reports the missing
fields and leaves the file unchanged.

## `mlg.json`

The config lists every setting explicitly rather than relying on implicit
defaults. All four fields are required, and `mlg check` reports any that are
missing. `mlg init` writes them in this order:

```text
{
  "name": "",
  "version": "0",
  "margin": 80,
  "formatOnCheck": true
}
```

- `name` — the collection's name (a string).
- `version` — the collection's version (a string; default `"0"`). `mlg release`
  bumps this.
- `margin` — the target line width, a positive integer, used by
  [`mlg format`](format.md). Default `80`. This field was formerly named
  `print_margin`; a config still using that name is reported as an error asking
  you to rename it.
- `formatOnCheck` — whether [`mlg check`](check.md) formats the collection
  before checking it (a boolean; default `true`).

`mlg init` does not create any `.mlg` files; add them under `content/` yourself.
