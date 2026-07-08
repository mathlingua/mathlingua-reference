# Expressions

A clause argument can be an expression.

```mlg
P \.and./ Q
x = y
x is? \set
```

Before trying expression parsing, the clause parser tries to parse a declaration statement. This means `x is \set` becomes a declaration/fact, while `x is? \set` remains a predicate expression.
