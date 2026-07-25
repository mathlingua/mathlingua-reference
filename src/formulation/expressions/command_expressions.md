# Command Expressions

```mlg
\a.b.foo
\a.b.foo(x)
\a.b.foo{a, b}(x)
\a.b.foo:bar{a, b}
\a.b.foo:bar{a, b}(x)
\a.b.foo{a}:bar{b}:baz{c}
```

Command tails such as `:bar` require at least one `{...}` argument group.
Command definitions may declare optional tails with `:?` in headers; references
include only the optional tails they are actually using.

A command argument may be an inferred parameter `X?`, which declares `X` inline
with the type that position requires (see Inferred Parameters). Two argument
shorthands also apply directly after a command chain:

- Collection-literal argument: `\foo{x_ : x_ is \real | x_ > 0}` is shorthand for
  the single set argument `\foo{{x_ : x_ is \real | x_ > 0}}`.
- Mapping argument: `\foo[x_ is \real]{x_ + 1}` is shorthand for
  `\foo{(x_ is \real) |-> x_ + 1}` (see Mapping Expressions).

Command expressions may also carry context suffixes:

```mlg
\ordered.pair#using{A := X; B := Y}
\some.theorem#given{A := X; B := Y}
```

`#using{...}` binds values for the referenced command's `using:` section.
`#given{...}` binds values for a theorem-like item's `given:` section. Suffix
arguments are semicolon-separated and appear after all ordinary command
arguments.
