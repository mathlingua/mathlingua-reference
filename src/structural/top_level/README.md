# Top Level

```mlg
TopLevelItemUnion ::=
    | TitleGroup
    | SectionTitleGroup
    | SubsectionTitleGroup
    | TextGroup
    | TopLevelWritingGroup
    | DisambiguatesGroup
    | DescribesGroup
    | DefinesGroup
    | RefinesGroup
    | StatesGroup
    | AxiomGroup
    | TheoremGroup
    | CorollaryGroup
    | PersonGroup
    | ResourceGroup
    | SpecifyGroup
    | RelationGroup
    | EquivalentGroup
    | TopicGroup
```

The group kind is determined by the first section label. Definition-like cards
also require or receive an `Id:` during `mlg check`; duplicate ids are errors.

`Lemma:`, `Conjecture:`, `Represents:`, and `Subsubsection:` are no longer part
of the structural language.
