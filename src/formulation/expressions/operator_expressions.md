
# Operator Expressions

```mlg
x * y
x :* y
x *: y
x :*: y
```

```mlg
x |op| y
x :|op| y
x |op|: y
x :|op|: y
```

`x :* y` resolves `*` from the type of `x`. `x *: y` resolves from the type of `y`. `x :*: y` resolves from the least common ancestor type of both operands.

Plain `x * y` resolves from local definitions first, then global definitions, then a matching `Disambiguates:` item.

Named prefix and postfix operators behave like unary function calls:

```mlg
f| x      -- same arity as f(x)
x |f      -- same arity as f(x)
```

Named infix operators behave like binary function calls:

```mlg
x |op| y  -- same arity as op(x, y)
```
