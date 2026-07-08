# Written

```mlg
[LabelHeader]?
written: <WrittenText>+
```

`written:` text is math-mode text and is used when a command appears in an
expression. If no `called:` is provided for an item that needs one, the called
form is derived by using the written text in math mode.

`called:` and `written:` support conditional fragments such as
`@[U]{_{U?}}:{}`.
