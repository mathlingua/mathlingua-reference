# Variadic Equality Expressions

```mlg
X[1...n] is \set
X[1] is \set
X[(1,1)...(m,n)] is \set
```

```mlg
[. x[1] + _.. + x[n] .]
[. a[1]*x[1] + _.. + a[n]*x[n] .]
[. a[1]*x[1] + .._ + a[n]*x[n] .]
```

```mlg
[. i := 1 ... + a[i] * x[i] + ... i := n .]
```
