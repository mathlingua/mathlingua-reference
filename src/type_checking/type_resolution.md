
# Type Resolution

Plain operators and function-like notation are resolved by looking in the nearest local scope and then in global definitions. If an ambiguous global `Disambiguates:` item exists, its `when:` branches are tried in order and its `else:` branch is used as a fallback.

Directed operator forms select the type used for resolution:

```text
x :* y      -- use the type of x
x *: y      -- use the type of y
x :*: y     -- use the least common ancestor type
```

The same idea applies to named operators such as `x :|op| y`.

Operator resolution uses `extends:` relationships. A nested `Enables: relation:`
group whose `represents:` is `\\coercion` registers an automatic coercion: a
value of the described type may be used wherever the related type is expected.
Coercions are applied when checking whether actual arguments satisfy a resolved
command's requirements; they do not participate in notation lookup.

Capabilities from `Requires:` and `Enables:` are considered together for notation lookup. Cast-backed `from:` capabilities apply only when the value was introduced with a compatible cast literal, such as `A := {x_ : x_ is \real} as \set`.

Casts are written `value as \type` (soft) and `value as! \type` (hard). A soft
`as` cast succeeds when the target fact can be established, including through
`\\coercion` relations. A hard `as!` cast additionally drops through an
`\\encoding` relation — an abstraction boundary that no automatic coercion or
soft cast crosses.
