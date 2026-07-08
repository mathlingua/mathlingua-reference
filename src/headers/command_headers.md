
# Command Headers

Command headers define the shape of a command.

```mlg
\some.command
\foo{f(x_)}
\foo{X ::= {x_ : ...}}
\foo{G ::= (X, *, e)}
\foo{G ::= (X ::= (a, b), f(x_))}
\foo{a, b}(x_)
\function:?on{A}:?to{B}
```

The `:?` marker makes a tail part optional at use sites. A use may also write `:?name{value}` to include an optional tail only when the value is defined.

A command expression may end with context suffixes after all ordinary curly and parenthesized arguments:

```mlg
\ordered.pair#using{A := X; B := Y}
\some.theorem#given{X is \set; y "in" X}
```

`#using{...}` supplies values for a command's `using:` section. `#given{...}` supplies values for theorem-like `given:` sections. Arguments are separated by semicolons so each argument may contain commas.
