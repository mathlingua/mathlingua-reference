# Placeholder Names

A placeholder ends in one underscore. A magnetic placeholder ends in two underscores.

```mlg
x_
x__
```

Placeholders are used in forms, alias patterns, and render templates.

A single placeholder such as `x_` represents one argument. A magnetic placeholder such as `x__` can collect multiple arguments in function-like forms. For example, a described target `f(x__)` can accept calls such as `f(a, b, c)`, with the arguments treated as one tuple-like input for type-checking purposes.
