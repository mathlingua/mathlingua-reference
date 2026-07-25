# Mapping Expressions

A mapping expression is an anonymous function value written with `|->`.

```mlg
(x_ is \real) |-> x_ + 1
(x_ "in" A) |-> x_ + a
x_ |-> x_ + 1
```

The left side binds a parameter and the right side is the body. The binder is
either a parenthesized specification (`(x_ is \real)`, `(x_ "in" A)`) or a bare
name whose specification is inferred from context. `|->` is right-associative
and binds looser than every other expression form, so the entire remaining
expression becomes the body.

Command-argument shorthand: `\foo[lhs]{rhs}` desugars to `\foo{(lhs) |-> rhs}`.

```mlg
\foo[x_ is \real]{x_ + 1}
```

is exactly

```mlg
\foo{(x_ is \real) |-> x_ + 1}
```

The `[...]{...}` sugar applies only directly after a command chain. Elsewhere,
`X[i]` is a subset call, not mapping sugar.
