# Expression

```mlg
Expression ::= SpecOrPredicateExpression

SpecOrPredicateExpression ::=
    EqualityExpression QuotedName Name
  | EqualityExpression "is" CommandExpression
  | EqualityExpression "is?" CommandExpression
  | EqualityExpression "is_not?" CommandExpression
  | EqualityExpression

EqualityExpression ::=
    EqualityExpression ("=" | SpecialOperator) AdditiveExpression
  | AdditiveExpression

AdditiveExpression ::=
    AdditiveExpression ("+" | "-") MultiplicativeExpression
  | MultiplicativeExpression

MultiplicativeExpression ::=
    MultiplicativeExpression ("*" | "/") PowerExpression
  | PowerExpression

PowerExpression ::=
    HighPrecedenceExpression "^" PowerExpression
  | HighPrecedenceExpression

HighPrecedenceExpression ::=
    HighPrecedenceExpression NamedOperator UnaryExpression
  | HighPrecedenceExpression InfixCommand UnaryExpression
  | UnaryExpression

UnaryExpression ::=
    ("+" | "-") UnaryExpression
  | AtomExpression

AtomExpression ::=
    GroupedExpression Label
  | GroupedExpression
  | FunctionExpression
  | TupleExpression
  | SetExpression
  | SubsetExpression
  | CommandExpression
  | Name
```
