
# Special Operator Headers

A command header may be an operator form.

```mlg
[x_ * y_]
Defines: z is \set

[x_ |op| y_]
Disambiguates:
else: op(x_, y_)
```

Special operator headers can use any sequence of special operator characters and may include suffixes such as `*_1` or `*_free`.
