# Spec Literals And `satisfies`

A spec literal is a value of the builtin type `\\specification` with an implicit
`?` placeholder subject. It uses `?` where the subject would go.

```mlg
? is \real
? "in" R
? "in" \reals
```

The two forms are `? is <type>` and `? "op" <target>`, where the target may be a
name or a command expression.

The infix `satisfies` operator applies a specification to a subject. When the
specification is a concrete spec literal, substituting its `?` with the subject
yields the condition:

```mlg
x satisfies (? is \real)
```

means `x is \real`. The specification is usually written as a parenthesized spec
literal, but any expression of type `\\specification` is accepted.
