# Inferred Parameters

An inferred parameter is a command argument written `X?`. Its first occurrence
declares `X` inline, with the type that argument position requires; later uses of
`X` are ordinary references.

```mlg
f is \function:from{A?}:to{B?}
```

Here `A?` and `B?` declare `A` and `B` as the domain and codomain types demanded
by `\function`, without a separate `A, B is \set` declaration.

The `?` is authoring-only and does not render. Without the `?`, the same argument
(`\function:from{A}`) is an ordinary reference to an already-declared `A`.
