# If

`if:` assumes its condition and checks the `then:` clauses in that context.

```mlg
if: P
then: Q
```

The group may have an optional label heading. Nested clauses use the same clause syntax recursively.

Both `if:` and `then:` are statement positions: a bare `is` or `\:...:/` specification is rejected. Use the predicate forms `is?` / `is_not?` and `\:...?:/`.

```mlg
if: x is? \set
then: f(x) is? \real
```
