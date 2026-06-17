# Alias

```mlg
AliasItemUnion ::=
    | AliasGroup
```

```mlg
AliasKindUnion ::=
    | ExpressionAlias
    | SpecOperatorAlias
```

```mlg
[LabelHeader]?
alias: <AliasKindUnion>
written?: <WrittenText>+
```
