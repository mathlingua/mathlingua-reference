# Statements

Statements in clauses are usually declaration statements or specification statements.

```mlg
X is \set
x "in" X
G is \set via X
```

Statements can introduce symbols and facts when they appear in assumption positions such as `given:`, `when:`, `using:`, `where:`, `exists:`, or `forAll:`. In conclusion positions, the checker validates that symbols are declared and requirements can be established.
