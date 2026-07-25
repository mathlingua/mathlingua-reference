# Theorem

`Theorem:` is a theorem-like top-level item.

```mlg
[\command]?
Theorem:
given?: <RefinedDeclarationStatement>+
where?: <ClauseUnion>+
then: <ClauseUnion>+
iff?: <ClauseUnion>+
Justified?: <JustifiedItemUnion>+
Documented?: <DocumentedItemUnion>+
Aliases?: <AliasItemUnion>+
References?: <ResourceHeader>+
Metadata?: <MetadataItemUnion>+
Id?: <OpenText>
```

The optional heading is a `[\command]` command header. The `Theorem:` section
takes **no** argument; the result's name goes in `Documented:` `called:`.

```mlg
Theorem:
given: X is \set
then: X is? \set
Documented:
. called: "Every set is a set"
Id: "23e4567e-e89b-42d3-a456-426614174000"
```

The `then:` section is required. `given:` accepts refined-capable declaration statements.

The checker validates syntax, references, symbols, and requirements. It does not prove that theorem-like conclusions follow mathematically from their assumptions.
