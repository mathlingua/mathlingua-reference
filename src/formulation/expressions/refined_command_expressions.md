
# Refined Command Expressions

Refined command expressions attach adjective-like refinements to a base command type.

```mlg
\(injective)::function
\(injective, surjective)::function:on{A}:to{B}
\(bijective)::[[f]]
```

`[[f]]` is only valid in refined command syntax and means "the type of `f`". It is used in refinement definitions whose extension should adapt to the subject's actual type.

`Refines:` is the only top-level definition kind that may use a refined command header:

```mlg
[\(injective)::function:?on{A}:?to{B}]
Refines: f(x__)
Documented:
. adjective: "injective"
```

A `Refines:` body names only the subject form. It does not repeat `is <base>` because the base appears in the header.
