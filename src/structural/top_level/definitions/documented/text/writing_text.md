# Writing Text

`WritingText` is raw text used by nested documented `writing:` groups.

```mlg
writing: f(x_) :~> f(x)
as:
. "f(x)"
```

It is distinct from the top-level `Writing:` block, whose right-hand side is parsed as a formulation writing alias body.
