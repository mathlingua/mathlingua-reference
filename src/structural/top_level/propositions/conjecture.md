# Conjecture

`Conjecture:` is a theorem-like top-level item. It may have an optional command heading and optional prose text on the `Conjecture:` section.

```mlg
[conjecture.example]
Conjecture: "Example conjecture"
given: X is \set
then: X is? \set
Id: "23e4567e-e89b-42d3-a456-426614174000"
```

The `then:` section is required. `given:` accepts refined-capable declaration statements. `where:`, `iff:`, `Justified:`, `Documented:`, `Aliases:`, `References:`, `Metadata:`, and direct `Id:` are optional where supported by the parser.

The checker validates syntax, references, symbols, and requirements. It does not prove that theorem-like conclusions follow mathematically from their assumptions.
