# States

```mlg
[CommandHeader]
States: <OpenText>*
using?: <DeclarationStatement>+
when?: <ClauseUnion>+
that: <ClauseUnion>+
Requires?: <RequiresItemUnion>+
Enables?: <EnablesItemUnion>+
Justified?: <JustifiedItemUnion>+
Documented?: <DocumentedItemUnion>+
Aliases?: <AliasItemUnion>+
References?: <ResourceHeader>+
Metadata?: <MetadataItemUnion>+
Id?: <OpenText>
```

`States:` introduces a named statement. `that:` is required and contains the body of the statement.

`using:` introduces auxiliary symbols. `when:` states requirements for command-header parameters. `Requires:` and `Enables:` describe capabilities that the checker can use when resolving notation. `Id:` is required for every top-level item; `mlg check` adds it when missing.
