# Form Or Declarations

```mlg
FormOrDeclaration ::=
    Name
  | FunctionFormOrDeclaration
  | TupleFormOrDeclaration
  | SetFormOrDeclaration
  | Placeholder InfixFormOperator Placeholder
  | PrefixFormOperator Placeholder
  | Placeholder PostfixFormOperator

FunctionFormOrDeclaration ::= FunctionForm
                            | Name ":=" FunctionForm

FunctionForm ::= Name "(" MagneticPlaceholder ")"
               | Name "(" PlaceholderList ")"

TupleFormOrDeclaration ::= TupleForm
                         | Name ":=" TupleForm

TupleForm ::= "(" TupleFormElement "," TupleFormElement ("," TupleFormElement)* ")"

SetFormOrDeclaration ::= SetForm
                       | Name ":=" SetForm

SetForm ::= "{" PlaceholderForm "}"

PlaceholderForm ::= Placeholder
                  | Placeholder "(" PlaceholderList ")"
```
