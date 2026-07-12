
# Requires And Enables Items

`Requires:` and `Enables:` replace the older `Provides:` section. The nested operation item is `capability:`, not `symbol:`.

```mlg
RequiresItemUnion ::=
    | CapabilityGroup
    | DefinitionGroup

EnablesItemUnion ::=
    | CapabilityGroup
    | FromCapabilityGroup
    | FromAsGroup
    | RelationGroup
    | ConnectionGroup
```

`Requires:` describes capabilities and definitions that are part of a construct. `Enables:` describes additional notation, casts, views, and prose connections made available by the construct.

For type checking, ordinary capabilities from both sections are combined. The split is primarily communicative: authors can show what is definitional and what is merely enabled.

```mlg
Requires:
. capability: x_ "in" X :-> x_ member_of X
  written: "x_? \in X?"
. definition: \natural.0 is \natural

Enables:
. capability: x_ - y_ :=> x_ \.set.minus./ y_
. from: Y ::= {y__ : ...}
  capability: x_ "in" X :-> x_ member_of Y
. from: P ::= {(p_, q_) : ...}
  as: f(p_) := q_
. relation:
  to: r := \as.rational{n} is \rational
  when: n is \integer
  means: n \.embedded.to./ r
  as: \\view
```

`from:` groups must contain exactly one of `capability:` or `as:`.
Relations marked `\\view` support ordinary `as` casts; relations marked
`\\abstraction` additionally support hard `as!` casts.
