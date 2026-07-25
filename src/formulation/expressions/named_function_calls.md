# Named Function Calls

A named function call supplies a function's arguments by name using `[| ... |]`.

```mlg
f[|value := x, index := n|]
f[|value := x|]
```

Each entry has a left-hand side, then `:=`, then the argument expression. The
left-hand side is a name or a subset call:

```mlg
f[|value := x, Pair[left, right] := y, nested[outer[inner]] := z|]
```

The names identify which parameter each value fills; the call renders like an
ordinary positional call (`f[|value := x, index := n|]` renders as `f(x, n)`).
This is distinct from a mapping literal, which uses `|->`.
