
# Expression Alias

Expression aliases use `:=>` and may appear as ordinary `alias:` groups or inside `capability:` items.

```mlg
Aliases:
. alias: f(x_) :=> x_ + x_

Enables:
. capability: x_ - y_ :=> x_ \.set.minus./ y_
```

The left side describes the notation being introduced. The right side is the expression it expands to for checking and rendering support.
