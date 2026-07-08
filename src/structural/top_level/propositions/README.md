# Propositions

Proposition-like top-level items include `Axiom:`, `Theorem:`, `Lemma:`, `Corollary:`, and `Conjecture:`.

They may have optional command headings. Their first section may contain open-text prose, and their `then:` section is required. `given:` sections accept refined-capable declarations, so forms such as `f is \(injective)::function` are valid where refined statements are allowed.

```mlg
[theorem.identity]
Theorem: "Identity is a function"
given: A is \set
then: \identity.function:on{A} is? \function:on{A}:to{A}
Id: "23e4567e-e89b-42d3-a456-426614174000"
```

The checker validates syntax, references, declared symbols, and command requirements. It does not prove that the conclusion follows from the assumptions.

Top-level proposition cards use the resolved documented title when available. Otherwise they fall back to the label or command header, with dotted labels rendered as title text.
