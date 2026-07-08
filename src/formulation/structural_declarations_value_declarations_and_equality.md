# Structural Declarations, Value Declarations, And Equality

MathLingua uses related but distinct operators:

- `::=` introduces structural shape
- `:=` introduces a value definition
- `=` is mathematical equality

Examples:

```mlg
G ::= (X, *, e)
f(x__) := x__ is \function:on{A}:to{A}
x = y
```

A declaration may combine structural shape and value definition. In set expressions, `:=` value bindings belong in the predicate branch after `|`:

```mlg
{z_ ::= (a_, b_) : a_ "in" A; b_ "in" B | z_ := \ordered.pair:of{a_}:and{b_}}
```
