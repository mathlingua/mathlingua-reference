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

Command expressions may also carry context suffixes:

```mlg
\ordered.pair#using{A := X; B := Y}
\some.theorem#given{A := X; B := Y}
```

`#using{...}` binds values for the referenced command's `using:` section.
`#given{...}` binds values for a theorem-like item's `given:` section. Suffix
arguments are semicolon-separated and appear after all ordinary command
arguments.
