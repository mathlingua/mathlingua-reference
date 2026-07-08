# Author

`author:` records one or more author names.

```mlg
Resource:
. author: "Christopher Wilson"
```

The value is `OpenText`: it must be quoted in source, the outer quotes are stripped, and no escape processing is performed. Resource cards in `mlg view` use `title:` as the visible title and make it a hyperlink when `url:` is present.
