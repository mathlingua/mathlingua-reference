# Alias

`Aliases:` contains nested `alias:` groups.

```mlg
Aliases:
. alias: f(x_) :=> x_ + x_
  written: "2x_?"
```

An alias may use an expression alias (`:=>`) or spec-operator alias (`:->`). `written:` is optional and controls rendering of the alias form.
