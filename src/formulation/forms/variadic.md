# Variadic

Variadic forms are written with magnetic placeholders such as `x__`.

```mlg
f(x__)
Defines: h(x__) := f(g(x__)) is \function:on{A}:to{C}
```

A magnetic placeholder allows a function-like form to accept multiple supplied arguments while treating them as one tuple-like input. This is different from `f(x_, y_, z_)`, which accepts exactly three separate arguments.
