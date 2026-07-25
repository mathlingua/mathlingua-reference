# Is Question Keyword

`is?` and `is_not?` are the predicate forms of `is`.

```mlg
x is? \set
x is_not? \empty.set
```

They ask whether the subject satisfies or does not satisfy the type expression,
without introducing a symbol. The checker still validates that the subject is
declared and that the referenced type exists.

Because a bare `is` introduces a symbol and is confined to binding positions, a
type check written in a statement position (`then:`, `that:`, `if:`, `iff:`,
`suchThat:`) must use `is?` or `is_not?`. The same distinction applies to spec
operators: the binding form `x "in" X` and predicate form `x "in"? X`, and the
infix spec forms `A \:subset:/ B` and `A \:subset?:/ B`.
