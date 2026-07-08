
# Rendering

Rendering is driven by documented names and writing aliases.

`written:` templates render in math mode and are used when a command appears as an expression. `called:` templates render as prose and are used for card titles, labels, and many type names. If one is missing, the renderer generates it from the one that exists.

In rendered `is` statements, the right-hand side uses the command's `written:` content when available and falls back to `called:`.

Templates remove placeholder markers such as `?` after substitution and support conditional fragments:

```text
@[U]{_{U?}}
@[U]{_{U?}}:{_X}
```

Dot-grouped expressions of the form `(. ... .)` are grouping syntax only and render without visible parentheses.

Names ending in digits render with numeric subscripts: `x1` renders as `x_1`. The top-level `Writing:` block can map names to LaTeX, and that mapping is applied throughout expressions, statements, and specifications. For example, `alpha123` renders as `\alpha_{123}` when `alpha :~> \alpha` is defined.

Builtin types such as `\\statement`, `\\expression`, `\\specification`, and `\\opaque` render as plain text names.

Cards use the resolved called content as their title when available. Theorem-like and axiom-like entries fall back to their label, with dots converted to spaces and words capitalized.

`Documented.description:` renders as prose above the card, like a `Text:` block. The card's `Documented:` details show `description: <see above>`.
