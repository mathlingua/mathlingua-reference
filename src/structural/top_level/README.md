# Top Level

```mlg
TopLevelItemUnion ::=
    | TitleGroup
    | SectionTitleGroup
    | SubsectionTitleGroup
    | TextGroup
    | TopLevelWritingGroup
    | DescribesGroup
    | DefinesGroup
    | RefinesGroup
    | StatesGroup
    | AxiomGroup
    | TheoremGroup
    | CorollaryGroup
    | LemmaGroup
    | ConjectureGroup
    | PersonGroup
    | ResourceGroup
    | SpecifyGroup
```

The group kind is determined by the first section label. Definition-like cards
also require or receive an `Id:` during `mlg check`; duplicate ids are errors.
