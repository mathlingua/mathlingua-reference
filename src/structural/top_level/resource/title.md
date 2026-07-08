# Title

`title:` records the display title of the resource.

```mlg
Resource:
. title: "A Brief Introduction to ZFC"
```

The value is `OpenText`: it must be quoted in source, the outer quotes are stripped, and no escape processing is performed. Resource cards in `mlg view` use `title:` as the visible title and make it a hyperlink when `url:` is present.
