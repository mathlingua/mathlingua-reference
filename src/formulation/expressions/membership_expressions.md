# Membership Expressions

`member_of` is a builtin membership expression relating a subject to a
collection.

```mlg
x member_of X
```

It is distinct from a spec operator such as `"in"`. A type usually exposes
membership notation by reducing its spec operator to `member_of` through a
capability:

```mlg
Requires:
. capability: x_ "in" X :-> x_ member_of X
```

`member_of` reduces against a collection form (for example a set declared with
`X ::= {x__ : ...}`), so it is the low-level relation that surface notation like
`"in"` resolves to.
