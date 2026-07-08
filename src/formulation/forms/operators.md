# Operators

Operator forms describe infix, prefix, and postfix notation.

```mlg
x_ + y_
x_ |op| y_
f| x_
x_ |f
```

Special operators may be made from sequences of operator characters, such as `**`, `+_-*`, `^^`, `*_1`, and `*_free`.

Named operators use bars around a name. A named infix operator such as `x |op| y` has the same arity as the function call `op(x, y)`. Prefix and postfix named operators have the same arity as a one-argument function call.
