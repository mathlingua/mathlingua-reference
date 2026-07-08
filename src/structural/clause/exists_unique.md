# Exists Unique

`existsUnique:` has the same surface shape as `exists:` but records unique-existence intent.

```mlg
existsUnique: x is \real
```

```mlg
existsUnique: y "in" B
suchThat: f(x) = y
```

`suchThat:` is optional. Introduced symbols are available in the `suchThat:` section when it is present.
