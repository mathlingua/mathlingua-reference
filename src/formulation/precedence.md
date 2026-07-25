
# Precedence

Expression forms bind from loosest to tightest as follows:

- mapping literals `|->` (right-associative, loosest)
- specification and predicate forms: infix spec `\:...:/`, `"op"`, `"op"?`,
  `is`, `is?`, `is_not?`, `as`, `as!`, `member_of`, `satisfies`
- infix command expressions `\.cmd./`
- equality and special operators `=`, `!=`, and other special operators
- additive `+`, `-`
- multiplicative `*`, `/`
- power `^` (right-associative)
- named operators `|op|`
- prefix and postfix operators, then primaries (tightest)

So equality binds tighter than infix command expressions:

```mlg
x = a \.or./ x = b
```

is parsed like:

```mlg
(x = a) \.or./ (x = b)
```

Use dot-grouped source parentheses `(. ... .)` to make grouping explicit without
forcing visible rendered parentheses.
