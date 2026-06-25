# Command Expressions

```mlg
\a.b.foo
\a.b.foo(x)
\a.b.foo{a, b}(x)
\a.b.foo:bar{a, b}
\a.b.foo:bar{a, b}(x)
\a.b.foo{a, b}:bar{a}
\a.b.foo{a, b}:bar{a}(x)
\a.b.foo{a}:bar{b}:baz{c}
\a.b.foo{a}:bar{b}:baz{c}(x)
```

```mlg
\foo{x_ -> x_ + 1}
```
is equivalent to
```mlg
\foo[x_]{x_ + 1}
```

```mlg
\foo{{x_ : x_ is \real}}
```
is equivalent to
```mlg
\foo{x_ : x_ is \real}
```

```mlg
\foo{{x_ : x_ is \real | f(x_) > 0}}
```
is equivalent to
```mlg
\foo{x_ : x_ is \real | f(x_) > 0}
```
