# Specifications

A specification states a fact using the `is` relation or an infix specification command (`\:...:/`).

```mlg
x is \set
A \:subset:/ B
```

A specification introduces a symbol, so it is only allowed in binding positions (`exists:`, `existsUnique:`, `forAll:`, `given:` arguments, and `where:` / `suchThat:` / `when:`). In statement positions (`then:`, `if:`, `iff:`, `that:`, `else:`, and the boolean combinators) a bare `is` or `\:...:/` specification is rejected — use the predicate forms `is?` / `is_not?` and the predicate infix form `\:...?:/`:

```mlg
x is? \set
A \:subset?:/ B
```

A specification is valid only when the relevant operator is available from the target type's `Requires:` or `Enables:` capabilities, or from another checker rule that specifically allows it.
