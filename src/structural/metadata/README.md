# Metadata

Older structural groups may contain a `Metadata:` section with nested metadata items.

```mlg
Metadata:
. id: "stable-id"
. version: "1"
```

The current authoring workflow uses direct top-level `Id:` sections instead. `mlg check` generates missing direct `Id:` sections for top-level items and reports duplicates.
