# Definitions

Definition-like top-level groups are command-backed and may contain the support
sections shown below.

```mlg
Requires?: <RequiresItemUnion>+
Enables?: <EnablesItemUnion>+
Justified?: <JustifiedItemUnion>+
Documented?: <DocumentedItemUnion>+
Aliases?: <AliasItemUnion>+
References?: <ResourceHeader>+
Metadata?: <MetadataItemUnion>+
```

`Provides:` and nested `symbol:` were renamed to `Enables:` and `capability:`.
`Requires:` is used for definitional capabilities or required definitions, while
`Enables:` is used for additional supported notation.
