# `mlg release`

`mlg release` records a version snapshot of the current collection. Run it from
anywhere inside a collection (a directory at or above the current one must
contain an `mlg.json`).

```text
mlg release --summary TEXT [--dry-run] [--diff]
```

- `--summary TEXT` is required and labels the release.
- `--dry-run` shows what the release would record without writing any files.
- `--diff` also shows a per-item diff of each item whose contents changed since
  the previous release.

Before recording anything, `mlg release`:

1. requires the collection to be a Git repository with a clean work tree, and
2. runs [`mlg check`](check.md) (which also fills in any missing `Id:`
   sections); it stops if the check reports errors.

It then hashes each top-level item, versions the items whose contents changed
(and re-versions items that depend on them), appends entries to
`metadata/collection.json` and `metadata/items/<id>.json`, and bumps the
`version` field in `mlg.json`. It prints a grouped report of the new repository
version, the HEAD commit, the summary, and which items were updated.
