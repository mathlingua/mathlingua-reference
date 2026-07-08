# Named Operators

Named operators use a name surrounded by bars.

```mlg
x |op| y
x :|op| y
x |op|: y
x :|op|: y
f| x
x |f
```

The colon-directed forms choose which operand type is used to resolve the operator. Prefix and postfix forms have the same arity as a one-argument function call.
