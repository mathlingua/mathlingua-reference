# Variadic Equality Expressions

Variadic equality chains compare more than two expressions.

```mlg
x = y = z
```

The expression is parsed as a chain of equalities. Equality and inequality are accepted for any declared symbols, though a collection can still define type-specific equality behavior with capabilities.
