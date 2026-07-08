# Called

```mlg
[LabelHeader]?
called: <CalledText>+
written?: <WrittenText>+
```

`called:` text is ordinary text, not math mode. It is used for prose labels and card titles. If no `written:` is provided, a written form is derived from the called text.

In rendered `is` statements, the right-hand side prefers `written:` when available and falls back to `called:`.
