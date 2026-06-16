# Refined Command Expressions

```mlg
RefinedTail ::= "[[" Name "]]" | RawChain

RefinedExpressionPart ::= RawChain CommandExpressionTail
RefinedHeaderPart ::= RawChain CommandHeaderTail

RefinedCommandExpression ::=
    "\" [RawChain "."] "(" RefinedExpressionPart ("," RefinedExpressionPart)* ")" "::"
    RefinedTail CurlyExpressionArgs* CommandExpressionTail ParenExpressionArgs*

RefinedCommandHeader ::=
    "\" [RawChain "."] "(" RefinedHeaderPart ("," RefinedHeaderPart)* ")" "::"
    RefinedTail CurlyHeadingArgs* CommandHeaderTail ParenHeadingArgs*
```
