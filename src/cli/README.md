# `mlg`

`mlg` is the MathLingua command line tool.

The commands are:

- `mlg check` to parse and semantically check a collection
- `mlg clean` to remove the generated `docs/` directory
- `mlg export` to build a static copy of the rendered viewer into `docs/`
- `mlg format` to normalize `.mlg` source formatting
- `mlg init` to create a starter collection
- `mlg release` to record a version snapshot of the collection
- `mlg version` to print the installed version
- `mlg view` to serve the rendered interactive viewer

There are also hidden commands that do not appear in `--help`: `mlg debug`,
`mlg extract`, `mlg lsp`, `mlg report`, and the easter-egg `mlg whte_rbt.obj`.

Every command accepts the global event filters `--event-audience` (also spelled
`--event-scope`), `--event-level`, and `--event-markers`.
