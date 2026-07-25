
# Special Operator Headers

A command header may be an operator form, using a special operator (`+`, `-`, `*`, `:-:`, ...) or a named operator (`|op|`) between placeholder operands. Operator headers most commonly back a `Disambiguates:` group that resolves the notation to a command:

```mlg
[x_ - y_]
Disambiguates:
when: x_, y_ is \set
to: x_ \.set.minus./ y_
else: x_ :-: y_
Documented:
. written: "x_? - y_?"
```

Each `when:`/`to:` branch is tried in order, and `else:` is the fallback.

Special operator headers can use any sequence of special operator characters and may include underscore suffixes such as `*_1` or `*_free`.
