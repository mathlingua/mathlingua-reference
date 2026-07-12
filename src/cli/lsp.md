# `mlg lsp`

`mlg lsp` runs the MathLingua language server over standard input/output for an
editor or other LSP client.

The current server provides:

- collection diagnostics when a document is opened or saved
- context-aware completion for group heads, section items, and commands;
  command completion is triggered by `\\` and uses snippets when supported
- jump to definition for command uses
- prepare-rename and workspace rename for top-level command signatures and all
  corresponding uses

Open document text is kept in memory for completion. Diagnostics are refreshed
on open and save rather than after every edit.
