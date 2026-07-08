# Spec Operator Aliases

Specification aliases use `:->`.

```mlg
capability: x_ "in" X :-> x_ member_of X
capability: x_ "in" X :-> \\opaque
```

The left-hand side is a specification-like form. The right-hand side is the fact, builtin target, or specification established when the capability matches.

Spec aliases are most often placed in `Requires:` or `Enables:` as capabilities. A `:->` capability is how notation such as membership can reduce to a type fact or another specification during checking.
