
# `mlg check`

`mlg check` checks the current collection.

```text
mlg check [--json] [--diagnostic-schema] [PATH...]
```

With no paths, the whole collection is reported. File and directory paths act
as diagnostic filters: the implementation still parses and checks the complete
collection so cross-file references remain available. `--json` writes a
machine-readable diagnostic report, while `--diagnostic-schema` prints the JSON
schema for that report.

It also edits source files to add missing top-level `Id:` sections before semantic checking. Generated IDs are UUID v4 values. Duplicate IDs are reported as errors.

Diagnostics use paths relative to the collection content root where possible. Parser diagnostics are rewritten into user-facing messages rather than internal Rust AST/debug output when the error can be localized.

If a directory contains a `toc` file, `mlg check` verifies that every `.mlg` file and subdirectory is listed, that every listed entry exists, and that hidden or renamed entries use valid `-> HIDDEN` or `-> Title` syntax.

All commands accept global event filters: `--event-audience` (also spelled
`--event-scope`), `--event-level`, and `--event-markers`.
