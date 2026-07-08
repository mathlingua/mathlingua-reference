# For All

`forAll:` introduces universally quantified symbols, optional `where:` assumptions, and required `then:` clauses.

```mlg
forAll: x "in" X
then: x is? \set
```

```mlg
forAll: x1, x2 "in" A
where: x1 != x2
then: f(x1) != f(x2)
```

Symbols introduced by `forAll:` are available in both `where:` and `then:`.
