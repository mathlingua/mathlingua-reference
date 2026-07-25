# Have / Iff

The implemented biconditional group is `have:` followed by `iff:`.

```mlg
have:
. P
iff:
. Q
```

The older `iff: ... then: ...` form is not supported. Use `have: ... iff: ...` instead.

The group may have an optional label heading. Both `have:` and `iff:` are statement positions, so bare `is` and `\:...:/` specifications are rejected there; use the predicate forms `is?` / `is_not?` and `\:...?:/`.
