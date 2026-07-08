# Infix Expression Command Headers

An infix expression command header defines command notation used between two expressions.

```mlg
[A \.set.union./ B]
Defines: C is \set
```

The command inside `\.` and `./` is the signature. The operands in the header become command parameters and must be specified through `when:` unless the command form itself establishes the subject, as with certain specification forms.
