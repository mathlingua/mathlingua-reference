
# Precedence

The parser treats equality and inequality as binding tighter than infix command expressions. For example:

```mlg
x = a \.or./ x = b
```

is parsed like:

```mlg
(x = a) \.or./ (x = b)
```

Use dot-grouped source parentheses `(. ... .)` to make grouping explicit without forcing visible rendered parentheses.
