# Command Headers

```mlg
CommandHeader ::= SimpleCommandHeader | InfixCommandHeader | RefinedCommandHeader

CurlyHeadingArgs ::= "{" FormList "}"
ParenHeadingArgs ::= "(" FormList ")"

CommandHeaderTailPart ::= ":" RawChain CurlyHeadingArgs+
CommandHeaderTail ::= CommandHeaderTailPart*

SimpleCommandHeader ::= "\" RawChain CurlyHeadingArgs* CommandHeaderTail ParenHeadingArgs*
InfixCommandHeader ::= "\:" RawChain CurlyHeadingArgs* CommandHeaderTail ":/"
```
