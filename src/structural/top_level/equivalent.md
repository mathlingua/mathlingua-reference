# Equivalent

`Equivalent:` names an equivalence class whose `to:` entries are asserted to be
interchangeable with one another. Its `[...]` command heading names the class;
each `to:` command must use the header parameters exactly.

```mlg
[CommandHeader]
Equivalent: <OpenText>*
using?: <DeclarationStatement>+
when?: <ClauseUnion>+
to: <Expression>+
Justified?: <JustifiedItemUnion>+
Documented?: <DocumentedItemUnion>+
References?: <ResourceHeader>+
Id?: <OpenText>
```

The `[CommandHeader]` heading is required and the `to:` section is required.
Unlike the definition-like groups, `Equivalent:` has no `Requires:`, `Enables:`,
`Aliases:`, or `Metadata:` sections.

```mlg
[\foo:of{a}:with{b}]
Equivalent:
using:
. n is \integer
when:
. a is \real
. b is \real
to:
. \bar{a, b}
. \baz:with{b}:and{a}
References:
. $book.foo
Id: "11111111-1111-4111-8111-111111111111"
```

The optional prose on the `Equivalent:` section describes the class:

```mlg
[\eq{a, b}]
Equivalent:
. "a and b are interchangeable"
to:
. \bar{a, b}
. \baz{a, b}
```
