# Exists

`exists:` introduces one or more symbols and optionally constrains them with `suchThat:`.

```mlg
exists: x is \real
```

```mlg
exists:
. x is \real
. y is \real
suchThat:
. x != y
```

`suchThat:` is optional. Symbols introduced by `exists:` are available in the optional `suchThat:` clauses.
