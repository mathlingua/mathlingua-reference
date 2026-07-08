# Mapping Expressions

Mapping expressions use `[| ... |]`.

```mlg
[| value := x, index := n |]
f[| value := x |]
```

Each mapping entry binds a name to an expression. Mapping expressions are parsed as formulation expressions and can appear anywhere an expression is accepted.
