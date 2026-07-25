# Structural Declarations, Value Declarations, And Equality

MathLingua uses related but distinct operators:

- `::=` introduces structural shape
- `:=` introduces a value definition
- `=` is mathematical equality

Examples:

```mlg
G ::= (X, *, e)
S := \set.theoretic.pair:of{A}:and{A}
x = y
```

The right-hand side of `:=` is an expression. A `Defines:` target often combines a value definition with a type: `S := \set.theoretic.pair:of{A}:and{A} is \set`.

A declaration may combine structural shape and value definition. In set expressions, `:=` value bindings belong in the predicate branch after `|`:

```mlg
{z_ ::= (a_, b_) : a_ "in" A; b_ "in" B | z_ := \ordered.pair:of{a_}:and{b_}}
```
