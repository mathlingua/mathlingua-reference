# Infix Specification Command Headers

An infix specification command header uses the `\:...:/` form.

```mlg
[A \\:subset:/ B]
Describes: A
when: B is \set
```

These forms are special for `Describes:`. The left-hand side is the item being described, so it does not require a `when:` entry for itself. Other header parameters still need `when:` specifications.
