# Expressions

Expressions are concrete mathematical terms or predicates used inside clauses, definitions, aliases, and rendering helpers.

Common expression forms include:

```mlg
x
x + y
f(x)
A \.set.union./ B
x is? \set
{x_ : x_ is \set | x_ != \empty.set}
\\exists{x is \set}:suchThat{x = x}
```

Expression parsing has precedence. Equality and inequality bind tighter than infix command expressions, so `x = a \.or./ x = b` is parsed as `(x = a) \.or./ (x = b)`.
