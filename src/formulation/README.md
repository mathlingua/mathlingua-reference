# Formulation

The formulation language is the mathematical syntax used inside structural sections.

Examples include:

```mlg
x is \set
x "in" X
f(x, y)
A \.set.union./ B
{z_ ::= (a_, b_) : a_ "in" A; b_ "in" B | z_ := \ordered.pair:of{a_}:and{b_}}
```

Different structural sections call different formulation parsers. For example, command headers, expressions, declaration statements, aliases, label headers, author headers, and resource headers are separate parser entry points.

Important rules:

- whitespace is generally ignored by the formulation parser
- command expressions start with `\`
- builtin commands and builtin types start with `\\`
- declaration statements use `::=`, `:=`, `is`, or a quoted spec operator
- expressions and statements are checked later by the semantic checker
