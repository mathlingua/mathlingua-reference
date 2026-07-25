# Casts

A cast views an expression as another type. `as` is a soft cast and `as!` is a
hard cast.

```mlg
{x_ : x_ is \real} as \set
n as! \set
```

A soft cast (`as`) is checked: the checker must be able to justify that the
expression has the target type. A hard cast (`as!`) asserts the target type
without that justification and is used where the author takes responsibility for
the claim.

`as` and `as!` bind looser than the arithmetic and command operators, so the
whole preceding expression is the cast subject.

The related statement form `x is! T` (or `x := value is! T`) introduces a
hard-cast assumption. Unlike `as!`, it is a statement, not an expression, and is
only accepted by structural sections that explicitly allow such assumptions.
