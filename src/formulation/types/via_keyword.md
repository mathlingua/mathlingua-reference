# Via Keyword

`via` records the view used by an extension.

```mlg
G is \set via X
```

The left side is an `is` statement. The right side is a form or declaration that describes how the subtype is viewed as the supertype.

In a definition, `extends: G is \set via X` lets the checker use `G is \set` when it knows `G` has the described type. The `via` expression is also checked for declared symbols, which helps ensure that the documented view is meaningful in the local context.
