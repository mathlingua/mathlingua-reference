# `mlg clean`

`mlg clean` removes the generated `docs/` directory from the current collection.
It is the inverse of [`mlg export`](export.md), which builds into `docs/`.

```text
mlg clean
```

Run it from anywhere inside a collection (a directory at or above the current one
must contain an `mlg.json`). It reports `Removed docs/`, or `Nothing to remove;
docs/ does not exist` when there is nothing to clean.

Outside a collection the command fails and touches nothing, so it never deletes a
`docs/` directory that does not belong to a MathLingua collection.
