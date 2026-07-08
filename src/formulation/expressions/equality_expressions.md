# Equality Expressions

Equality uses `=` and inequality uses `!=`.

```mlg
x = y
x != y
x = y = z
```

The checker accepts `=` and `!=` for declared symbols of any type, even when a type-specific equality capability has not been defined. A type may still define its own equality or inequality capability when it wants special semantics or rendering.

Equality binds tighter than infix command expressions.
