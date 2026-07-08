# Is Keyword

`is` records or requires a type fact.

```mlg
X is \set
A, B is \set
f(x__) := x__ is \function:on{A}:to{A}
```

The left side may introduce one or more subjects depending on context. The right side is a type expression, usually a command expression or builtin type.

`A, B is \set` means both `A is \set` and `B is \set`.
