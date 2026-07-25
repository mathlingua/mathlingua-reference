
# Disambiguates

`Disambiguates:` defines how an otherwise ambiguous operator or function-like form should resolve globally.

```mlg
[FormOrDeclaration]
Disambiguates:
(when: <ClauseUnion>+
 to: <Expression>)+
else?: <Expression>
Justified?: <JustifiedItemUnion>+
Documented?: <DocumentedItemUnion>+
Aliases?: <AliasItemUnion>+
References?: <ResourceHeader>+
Metadata?: <MetadataItemUnion>+
Id?: <OpenText>
```

A `Disambiguates:` item must contain at least one `when:` / `to:` branch or an
`else:` section (or both). Each `when:` is immediately followed by its `to:`.

```mlg
[x_ - y_]
Disambiguates:
else: x_ :-: y_
Documented:
. written: "x_? - y_?"
```

For a plain operator such as `x - y`, the checker first looks in local scope and then in global definitions. If no definition is found and a matching `Disambiguates:` entry exists, branches are tried in order. The first branch whose `when:` requirements match supplies the `to:` expression. If no branch matches, `else:` supplies the fallback expression.

The same rule applies to special operators, named infix operators, and function-like notation.
