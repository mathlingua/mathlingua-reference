# Mappings

```mlg
f(_)
f(_, _)
f(x_, y_)
```

```mlg
f(__)
f(x__)
```

```mlg
f(x_, y_) is \function
f(x_, y_) ::= y is \function
f(x_, y_) ::= y := x_ + y_ is \function
f(x_, y_) ::= (a, b) is \function
f(x_, y_) ::= (a, b) := (x_ + y_, x_ * y_) is \function
f(x_, y_) ::= g(z_) is \function
f(x_, y_) ::= g(x_) := z_ -> z_ + 1 is \function
f(x_, y_) ::= {x_ : ...} is \function
f(x_, y_) ::= {z_ : ...} := {z_ : z_ is \real | z_ = x_ + y_} is \function

f(x_) := x_ + 1
f(x_) := x_ + 1 is \real.function
f(x_, y_) := \sin(x_) + \cos(y_) is \real.function
```
