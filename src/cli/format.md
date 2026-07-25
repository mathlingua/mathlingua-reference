# `mlg format`

`mlg format` normalizes the formatting of every `.mlg` file in the current
collection. Run it from anywhere inside a collection (a directory at or above the
current one must contain an `mlg.json`).

```text
mlg format
```

Formatting is normalization, not a judgement call. It:

- ensures exactly two blank lines between top-level items, and
- reflows inline `"..."` text values to the `margin` width from
  [`mlg.json`](init.md#mlgjson) (default `80`).

LaTeX blobs (`$...$`, `$$...$$`, `\(...\)`, `\[...\]`) are treated as atomic and
are never split; a text value whose author laid out multi-line or over-wide math
by hand is left untouched. Paragraph breaks inside text are preserved.

It reports `Formatted N files`, or `Nothing to format` when everything was
already canonical. If `mlg.json` still uses the old `print_margin` key, the
command aborts rather than reformatting to the default width, since that would
rewrap exactly the files whose author had chosen a narrower margin.

[`mlg check`](check.md) runs this same formatting first unless the config sets
`"formatOnCheck": false`.
