# Equivalently

`equivalently:` asserts that all of its sub-clauses are equivalent. It is sugar for a chain of `iff`s.

```mlg
equivalently:
. a = b
. b = a
```

The group may have an optional label heading and lists one or more clauses (two or more to be meaningful). Each clause is validated like an `allOf:` entry, and the whole group is checked as though every clause implies every other.

Being a statement position, bare `is` and `\:...:/` specifications are rejected here; use the predicate forms `is?` / `is_not?` and `\:...?:/`.
