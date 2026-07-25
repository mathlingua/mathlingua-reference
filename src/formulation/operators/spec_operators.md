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

Each quoted spec operator has a predicate form with a trailing `?`, used in
statement positions:

```mlg
x "in" X    -- binding form, introduces a symbol
x "in"? X   -- predicate form, used in then:/that:/iff:
```

The right-hand side may be a name or a command expression, so `x "in" \reals` is
also a spec statement. Infix spec commands behave the same way, with `\:...:/`
for the binding form and `\:...?:/` for the predicate form:

```mlg
A \:subset:/ B
A \:subset?:/ B
```
