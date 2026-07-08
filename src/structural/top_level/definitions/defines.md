# Defines

```mlg
[CommandHeader]
Defines: <DeclarationStatement>
using?: <DeclarationStatement>+
when?: <ClauseUnion>+
expresses?: <ClauseUnion>
Requires?: <RequiresItemUnion>+
Enables?: <EnablesItemUnion>+
Justified?: <JustifiedItemUnion>+
Documented?: <DocumentedItemUnion>+
Aliases?: <AliasItemUnion>+
References?: <ResourceHeader>+
Metadata?: <MetadataItemUnion>+
Id?: <OpenText>
```

`Defines:` introduces a command by defining a value, statement, or typed object. The `expresses:` section records the defining expression or clauses.

`using:` introduces auxiliary symbols. `when:` states requirements for command-header parameters. `Requires:` and `Enables:` describe capabilities that the checker can use when resolving notation. `Id:` is required for every top-level item; `mlg check` adds it when missing.
