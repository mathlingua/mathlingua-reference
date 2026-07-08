# Forms

Forms describe the shape of notation rather than a concrete value.

Forms are used in command headers, described targets, alias left-hand sides, and declarations. Common form shapes are:

```mlg
x
x_
x__
f(x_)
f(x__)
(x_, y_)
{x_ : ...}
G ::= (X, *, e)
```

A form can introduce symbols when it appears in a declaration position. For example, `G ::= (X, *, e)` introduces `G`, `X`, and `e` as symbols whose roles must be specified by the surrounding definition.
