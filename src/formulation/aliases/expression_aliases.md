# Expression Aliases

Expression aliases use `:=>`.

```mlg
alias: f(x_) :=> x_ + x_
capability: x_ - y_ :=> x_ \.set.minus./ y_
```

The left-hand side describes notation. The right-hand side is the expression used as the expansion. In `Requires:` and `Enables:`, expression aliases are usually written as `capability:` items so the type checker can resolve that notation through a type.
