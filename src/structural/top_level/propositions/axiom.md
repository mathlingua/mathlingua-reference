# Axiom

`Axiom:` is a theorem-like top-level item.

```mlg
[\command]?
Axiom:
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

The optional heading is a `[\command]` command header. The `Axiom:` section
takes **no** argument; the result's name goes in `Documented:` `called:`.

```mlg
[\empty.set.axiom]
Axiom:
then: exists: X where: X is \set
Documented:
. called: "Axiom of the Empty Set"
Id: "23e4567e-e89b-42d3-a456-426614174000"
```

The `then:` section is required. `given:` accepts refined-capable declaration statements.

The checker validates syntax, references, symbols, and requirements. It does not prove that theorem-like conclusions follow mathematically from their assumptions.
