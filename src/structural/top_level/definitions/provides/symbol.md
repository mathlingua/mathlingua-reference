
# Capability

```mlg
[LabelHeader]?
capability: <AliasKindUnion>
written?: <WrittenText>+
```

A `capability:` declares notation made available by a type or construct. It replaces the older nested `symbol:` spelling.

```mlg
Requires:
. capability: x_ "in" X :-> x_ member_of X
  written: "x_? \in X?"

Enables:
. capability: x_ - y_ :=> x_ \.set.minus./ y_
. capability: R(a_, b_) :-> (a_, b_) "in" R
  written: "a_? \: R \: b_?"
```

For infix capabilities in a type definition, the operands are treated as values of the type being defined. For function-like capabilities, extra arguments are not implicitly typed unless the capability target establishes a type.
