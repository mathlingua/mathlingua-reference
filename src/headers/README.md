# Headers

A structural group may have a bracketed heading.

```mlg
[\set]
Describes: X

[theorem.ordinal.trichotomy]
Theorem:
then: ...
```

The group kind determines which heading parser is used:

- command headings for definitions and optional theorem-like commands
- label headings for many nested groups
- author headings for `Person:`
- resource headings for `Resource:`

A heading is never what determines the structural group kind. The first section label does that.
