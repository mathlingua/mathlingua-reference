# Aliases

```mlg
WritingAlias ::= FormOrDeclaration ":~>" RawNonEmptyText

ExpressionAliasLhs ::= FormOrDeclaration
                     | SimpleCommandHeader
                     | InfixCommandHeader

ExpressionAlias ::= ExpressionAliasLhs ":=>" Expression
SpecOperatorAlias ::= PlaceholderSpecStatement ":->" SpecOperatorAliasTarget
SpecOperatorAliasTarget ::= IsOrSpec | "\\" RawChain
```
