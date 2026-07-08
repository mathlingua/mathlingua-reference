
# Written Text

`WrittenText` is a rendering template interpreted in math mode.

```mlg
written: "A? \cap@[U]{_{U?}} B?"
```

Placeholder markers such as `?` are removed in rendered output after substitution. Conditional fragments use this form:

```text
@[U]{_{U?}}
@[U]{_{U?}}:{_X}
@[x, y]{x? + @[z]{z?}:{*}}
```

The first body is rendered only when every listed variable has a value. The optional `:{...}` body is rendered otherwise. Conditional fragments may be nested.
