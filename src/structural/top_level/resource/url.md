# Url

`url:` records the URL for the resource.

```mlg
Resource:
. url: "https://example.com/resource"
```

The value is `OpenText`: it must be quoted in source, the outer quotes are stripped, and no escape processing is performed. Resource cards in `mlg view` use `title:` as the visible title and make it a hyperlink when `url:` is present.
