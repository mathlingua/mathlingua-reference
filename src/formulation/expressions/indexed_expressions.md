# Indexed Expressions

Indexed expressions use square brackets after an expression.

```mlg
x[i]
x[i, j]
f(x)[n]
```

The owner expression is parsed first, followed by one or more index expressions. Indexing is an expression form; whether a particular indexed expression has a meaningful type depends on definitions and capabilities in the collection.
