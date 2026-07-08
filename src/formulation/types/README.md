# Types

Type statements use `is`.

```mlg
X is \set
f is \function:on{A}:to{B}
A, B is \set
```

Predicate-like type checks use `is?` and `is_not?`.

```mlg
x is? \set
x is_not? \empty.set
```

Builtin types start with two backslashes, such as `\\type`, `\\statement`, `\\expression`, `\\specification`, and `\\opaque`.
