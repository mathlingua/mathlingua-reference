# Documented

```mlg
DocumentedItemUnion ::=
    | WrittenGroup
    | CalledGroup
    | AdjectiveGroup
    | WritingGroup
    | DescriptionGroup
    | OverviewGroup
    | RelatedGroup
    | DiscovererGroup
```

`called:` is non-math text. `written:` is math-mode text. Definition cards use
these in context, deriving one from the other when only one is present.

`Refines:` entries use `adjective:` instead of `called:`.

`description:` prose is rendered above the card in `mlg view`; the card details
show it as `<see above>`.
