
# Connection

`connection:` groups are accepted inside `Enables:` as prose-oriented metadata about a connection between constructs.

```mlg
[LabelHeader]?
connection: <OpenText>*
to: <OpenText>*
using?: <DeclarationStatement>+
means: <OpenText>*
signifies?: <OpenText>*
viewable?: <OpenText>*
through?: <OpenText>*
```

The current checker parses and walks declarations in `using:`, but connection groups do not define operator capabilities or type facts. Use `capability:`, `from:`, and `viewable:` for semantic behavior.
