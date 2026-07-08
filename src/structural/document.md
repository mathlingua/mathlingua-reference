# Document

A `.mlg` document is a sequence of top-level groups. Blank lines separate groups. Lines whose trimmed text begins with `--` are comments.

The structural parser works in two layers:

1. a proto parser reads headings, sections, text literals, nested groups, and formulation blocks
2. the structural parser dispatches each group by its first section label

A heading-only group is not a valid structural group because the group kind comes from the first section label, not from the heading.

Top-level items must have an `Id:` section. `mlg check` adds missing IDs before checking.
