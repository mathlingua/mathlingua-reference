# Names

A normal formulation name is either an identifier-like name or a stropped symbolic name.

Identifier-like examples:

```text
x
x1
x_1
abc123
123
```

Stropped symbolic examples:

```text
`*`
`+_-*`
```

Names may contain underscores internally, but a name ending in `_` or `__` is a placeholder, not a normal name. In rendering, names of the form letters followed by digits are shown with a numeric subscript, so `x1` renders like `x_1`.
