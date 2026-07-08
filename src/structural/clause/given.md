# Given

Nested `given:` clauses introduce assumptions for a local `then:` block.

```mlg
given: f is \(injective)::function
then: f is? \function
```

The `given:` section accepts refined-capable declaration statements. Optional `where:` clauses may add local assumptions before `then:` is checked.
