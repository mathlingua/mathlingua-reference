# Infix Command Expressions

Infix command expressions place a command between two expressions using `\.` and `./`.

```mlg
A \.set.union./ B
P \.and./ Q
x \.less.than./ y
```

The command between `\.` and `./` is resolved like a command expression. Its documented `written:` template is used for rendering when available.

Infix command expressions have lower precedence than equality. This lets `x = a \.or./ x = b` parse as `(x = a) \.or./ (x = b)`.
