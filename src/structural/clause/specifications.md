# Specifications

Specification clauses state facts using quoted operators or infix specification commands.

```mlg
x "in" X
A \\:subset:/ B
```

A specification is valid only when the relevant operator is available from the target type's `Requires:` or `Enables:` capabilities, or from another checker rule that specifically allows it.
