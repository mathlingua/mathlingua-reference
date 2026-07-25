# Documented

```mlg
DocumentedItemUnion ::=
    | WrittenGroup
    | CalledGroup
    | AdjectiveGroup
    | WritingGroup
    | OverviewGroup
    | DescriptionGroup
    | RelatedGroup
    | DiscovererGroup
```

`called:` is non-math text. `written:` is math-mode text. Definition cards use
these in context, deriving one from the other when only one is present.

`Describes:` and `Defines:` entries must include at least one of `called:` or
`written:`. `Refines:` entries must include `adjective:` (and may add `written:`)
but not `called:`.

`description:` prose is rendered above the card in `mlg view`; the card details
show it as `<see above>`.
