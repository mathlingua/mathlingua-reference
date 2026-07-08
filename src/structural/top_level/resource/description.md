# Description

`description:` records a prose description of the resource.

```mlg
Resource:
. description: "A short description of the resource."
```

The value is `OpenText`: it must be quoted in source, the outer quotes are stripped, and no escape processing is performed. Resource cards in `mlg view` use `title:` as the visible title and make it a hyperlink when `url:` is present.
