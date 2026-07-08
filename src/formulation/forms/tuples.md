# Tuples

Tuple forms use parentheses and contain two or more elements.

```mlg
(x_, y_)
(a_, b_, c_)
G ::= (X, *, e)
```

One-element tuples are not supported. Parentheses around a single expression are grouping syntax, not tuple syntax.

Tuple declarations introduce nested symbols when they occur in declaration positions. Those symbols must be specified directly or through an `extends:` view when used in `Describes:`, `Defines:`, or `Refines:` targets.
