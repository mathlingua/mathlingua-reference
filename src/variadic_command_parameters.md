# Variadic Command Parameters

Variadic command parameters are written with magnetic placeholders ending in `__`.

```mlg
f(x__)
h(x__) := f(g(x__))
```

They allow function-like notation to accept any number of supplied arguments while the checker treats the collected arguments as one input. Use ordinary placeholders such as `x_`, `y_`, and `z_` when a form must accept exactly that many arguments.
