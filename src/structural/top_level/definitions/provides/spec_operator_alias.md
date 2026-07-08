
# Spec Operator Alias

Specification aliases use `:->`.

```mlg
Requires:
. capability: x_ "in" X :-> x_ member_of X

Requires:
. capability: x_ "in" X :-> \\opaque
```

The left side is a specification-like form. The right side is the specification or builtin target established when the capability matches.
