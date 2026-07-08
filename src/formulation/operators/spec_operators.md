# Spec Operators

Specification operators express facts such as membership.

```mlg
x "in" X
x "maps_to" Y
```

A quoted operator in a declaration or clause is parsed as a specification statement. Types make spec operators available through `Requires:` or `Enables:` capabilities.

```mlg
Requires:
. capability: x_ "in" X :-> x_ member_of X
```

A spec fact is valid only when the target type enables or requires the corresponding operator, except for builtin fallback behavior such as equality.
