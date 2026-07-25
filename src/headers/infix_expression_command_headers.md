# Infix Expression Command Headers

An infix expression command header defines command notation used between two expressions.

```mlg
[P \.and./ Q]
States:
when: P, Q is \\statement
that: \\and{P, Q}
```

The command between `\.` and `./` is the signature (here `\and`). The operands in the header become command parameters and must be specified through `when:` unless the command form itself establishes the subject, as with certain specification forms.

At use sites the operator is written between its operands, for example `P \.and./ Q` or, with dot grouping, `(.P.) \.and./ (.Q.)`.
