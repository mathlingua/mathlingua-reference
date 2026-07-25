# Infix Specification Command Headers

An infix specification command header uses the `\:...:/` form.

```mlg
[A \:subset:/ B]
Describes: A
when: B is \set
```

The header uses a single backslash: `\:` opens the form and `:/` closes it.

These forms are special for `Describes:`. The left-hand side is the item being described, so it does not require a `when:` entry for itself. Other header parameters still need `when:` specifications.

At use sites the specification form `A \:subset:/ B` introduces symbols and is only allowed in binding positions (`exists:`, `given:`, `forAll:`). In statement positions the predicate form `A \:subset?:/ B` (note `?:/`) must be used instead.
