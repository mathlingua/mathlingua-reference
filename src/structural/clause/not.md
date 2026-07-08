# Not

`not:` negates one clause.

```mlg
not: P
```

It can also contain a nested group:

```mlg
not:
. exists: x "in" X
```

The checker validates the nested clause in the current context. `not:` does not introduce new symbols by itself; symbols must come from the surrounding context or from a nested clause that introduces them.
