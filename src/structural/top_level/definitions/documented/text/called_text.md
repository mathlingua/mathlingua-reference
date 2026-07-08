
# Called Text

`CalledText` is a rendering template interpreted as prose with optional math fragments.

```mlg
called: "function on $A?$ to $B?$"
```

`called:` is used for prose labels and card titles. If only `written:` is available, the renderer can synthesize a called form by using the written text in math mode. Rendered `is` statements prefer `written:` on the right-hand side and fall back to `called:`.

The same conditional fragment syntax supported by `written:` is also available in `called:`.
