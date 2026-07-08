
# Resource

```mlg
[ResourceHeader]
Resource: <ResourceItemUnion>+
```

```mlg
ResourceItemUnion ::=
    | ResourceTitleGroup
    | ResourceAuthorGroup
    | ResourceOffsetGroup
    | ResourceUrlGroup
    | ResourceHomepageGroup
    | ResourceTypeGroup
    | ResourceEditionGroup
    | ResourceEditorGroup
    | ResourceInstitutionGroup
    | ResourceJournalGroup
    | ResourcePublisherGroup
    | ResourceVolumeGroup
    | ResourceMonthGroup
    | ResourceYearGroup
    | ResourceDescriptionGroup
```

In `mlg view`, a resource card uses `title:` as the card title. If `url:` is present, the title links to that URL. The URL itself is shown in the hidden details accordion.
