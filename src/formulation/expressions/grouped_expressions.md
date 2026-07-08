# Grouped Expressions

```mlg
GroupedExpression ::= "(" Expression ")"
                    | "(." Expression ".)"
```

Parenthesized groups render with parentheses when needed. Dot groups `(. ... .)`
are source-only grouping: they disambiguate the source but do not render visible
parentheses.
