# Refines

```mlg
[RefinedCommandHeader]
Refines: <RefinedDeclarationStatement>
using?: <DeclarationStatement>+
when?: <ClauseUnion>+
extends?: <RefinedDeclarationStatement>
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

Only `Refines:` entries may use a refined command header such as:

```mlg
[\(injective)::function:?on{A}:?to{B}]
Refines: f(x__)
when: A, B is \set
Documented:
. adjective: "injective"
Id: "23e4567e-e89b-42d3-a456-426614174000"
```

The `Refines:` section contains only the refined subject form; it does not repeat `is <base>`. The base construct is already present after `::` in the header.

`extends:` may state that one refinement implies other refinements, including dynamic target syntax such as `\(injective, surjective)::[[f]]`.

`Documented:` for a `Refines:` item requires `adjective:` and may also include `written:`, but it may not use `called:`.
