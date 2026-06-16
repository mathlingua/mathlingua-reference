# Command Expressions

```mlg
Chain ::= ChainPart ("." ChainPart)*
ChainPart ::= Name | "$" Name | SpecialOperator
RawChain ::= RawChainPart ("." RawChainPart)*
RawChainPart ::= Name | "$" Name | OperatorText

CurlyExpressionArgs ::= "{" ExpressionList "}"
ParenExpressionArgs ::= "(" ExpressionList ")"

CommandExpressionTailPart ::= ":" Chain CurlyExpressionArgs+
CommandExpressionTail ::= CommandExpressionTailPart*

CommandExpression ::= "\" Chain CurlyExpressionArgs* CommandExpressionTail ParenExpressionArgs*
```
