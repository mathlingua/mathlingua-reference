# Function Expressions

```mlg
FunctionExpression ::= Name "(" ExpressionList ")"
                     | Name "[|" FunctionNamedExpressionElement ("," FunctionNamedExpressionElement)* "|]"

FunctionNamedExpressionElement ::= FunctionNamedExpressionElementLhs ":=" Expression
FunctionNamedExpressionElementLhs ::= Name | SubsetNameCall
```
