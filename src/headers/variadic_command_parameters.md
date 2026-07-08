# Variadic Parameters

A command parameter can contain magnetic placeholders such as `x__`.

```mlg
[\function:?on{A}:?to{B}]
Describes: f(x__) ::= y_
```

The magnetic placeholder marks a variadic call position. A use such as `f(a, b, c)` supplies multiple arguments but the type-level description treats them as one tuple-like input.
