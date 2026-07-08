
# Type Resolution

Plain operators and function-like notation are resolved by looking in the nearest local scope and then in global definitions. If an ambiguous global `Disambiguates:` item exists, its `when:` branches are tried in order and its `else:` branch is used as a fallback.

Directed operator forms select the type used for resolution:

```text
x :* y      -- use the type of x
x *: y      -- use the type of y
x :*: y     -- use the least common ancestor type
```

The same idea applies to named operators such as `x :|op| y`.

Operator resolution uses `extends:` relationships. `viewable:` casts are applied only after the command or operator definition has already been resolved, when checking whether the actual arguments satisfy the resolved command's requirements.

Capabilities from `Requires:` and `Enables:` are considered together for notation lookup. Cast-backed `from:` capabilities apply only when the value was introduced with a compatible cast literal, such as `A := \set@{x_ : x_ is \real}`.
