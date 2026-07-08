# Describes

```mlg
[CommandHeader]
Describes: <FormOrDeclaration>
using?: <DeclarationStatement>+
when?: <ClauseUnion>+
extends?: <IsOrViaItemUnion>
specifies?: <IsOrViaItemUnion>+
satisfies?: <ClauseUnion>+
Requires?: <RequiresItemUnion>+
Enables?: <EnablesItemUnion>+
Justified?: <JustifiedItemUnion>+
Documented?: <DocumentedItemUnion>+
Aliases?: <AliasItemUnion>+
References?: <ResourceHeader>+
Metadata?: <MetadataItemUnion>+
Id?: <OpenText>
```

`Describes:` introduces a command as a type-like or construct-like form. Header parameters must be specified in `when:`. Symbols that appear in the target must be specified directly or through `extends:`.

`using:` introduces auxiliary symbols. `when:` states requirements for command-header parameters. `Requires:` and `Enables:` describe capabilities that the checker can use when resolving notation. `Id:` is required for every top-level item; `mlg check` adds it when missing.
