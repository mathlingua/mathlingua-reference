# Indexed Expressions

An indexed expression is a subset call: a name followed by bracketed name
indices.

```mlg
x[i]
x[i, j]
x[y[j]]
```

The forms are restricted. Both the target and the indices must be plain names,
there are at most two indices, and a single index may itself be one nested subset
call (`x[y[j]]`). Arbitrary expressions are not allowed as target or index, so
`f(x)[n]` is not a subset call.

Whether a particular subset call has a meaningful type depends on the definitions
and capabilities in the collection.
