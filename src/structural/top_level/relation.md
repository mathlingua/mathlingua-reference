# Relation

`Relation:` states a bidirectional relationship between the two concepts named in
`between:` and `and:`. Unlike a nested `Enables: relation:` group, it is a
heading-less, standalone item and registers no cast/view rule.

```mlg
Relation: <OpenText>*
using?: <DeclarationStatement>+
between: <RelationSubject>
and: <RelationSubject>
when?: <ClauseUnion>+
means?: <RelationMeans>
Justified?: <JustifiedItemUnion>+
Documented?: <DocumentedItemUnion>+
Aliases?: <AliasItemUnion>+
References?: <ResourceHeader>+
Metadata?: <MetadataItemUnion>+
Id?: <OpenText>
```

`Relation:` takes no bracket heading. `between:` and `and:` are required. Each
subject is either a declaration such as `a is \real` or a quoted reference —
`"#some.topic"` or `"\signature"`. `means:` is either a clause or quoted prose.

```mlg
Relation:
between: "#real.analysis"
and: "\sin"
means: "The sine function is studied within real analysis."
```

```mlg
Relation:
using:
. n is \integer
between: a is \real
and: b is \real
when:
. a = b
means: a = b
Documented:
. description: "a and b name the same value."
```
