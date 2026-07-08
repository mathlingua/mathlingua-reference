
# Disambiguates

`Disambiguates:` defines how an otherwise ambiguous operator or function-like form should resolve globally.

```mlg
[CommandHeader]
Disambiguates:
(when: <ClauseUnion>+
to: <Expression>
else: <Expression>
Documented?: <DocumentedItemUnion>+
Aliases?: <AliasItemUnion>+
References?: <ResourceHeader>+
Metadata?: <MetadataItemUnion>+
```

A `Disambiguates:` item may contain one or more `when:` / `to:` branches, or it may contain only `else:`.

```mlg
[x_ - y_]
Disambiguates:
else: x_ :-: y_
Documented:
. written: "x_? - y_?"
```

For a plain operator such as `x - y`, the checker first looks in local scope and then in global definitions. If no definition is found and a matching `Disambiguates:` entry exists, branches are tried in order. The first branch whose `when:` requirements match supplies the `to:` expression. If no branch matches, `else:` supplies the fallback expression.

The same rule applies to special operators, named infix operators, and function-like notation.
