# Variadic Is

A single `is` statement can apply to multiple subjects.

```mlg
A, B is \set
x1, x2 "in" A
```

The statement is treated as one fact for each subject. For example, `A, B is \set` establishes both `A is \set` and `B is \set`.
