# Set Expressions

```mlg
SetExpression ::= "{" SetTarget ":" SetSpecList ("|" SetPredicate)? "}"
SetTarget ::= name | placeholder-form | tuple-target | function-target | SetTarget "::=" SetTarget
SetSpecList ::= Expression (";" Expression)* | "..."
SetPredicate ::= Expression | SetTarget ":=" Expression
```

The binder before `:` may be a name, tuple, function form, or introduction form.
For example:

```mlg
{z_ ::= (a_, b_) : a_ "in" A; b_ "in" B | z_ := \ordered.pair:of{a_}:and{b_}}
```

Definitions using `:=` belong in the predicate branch after `|`, not in the
specification list before `|`.
