# Operators

MathLingua supports three families of operators: special operators, named operators, and specification operators.

Special operators are made from operator characters:

```mlg
x + y
x ** y
x *_free y
```

Named operators use bars around a name:

```mlg
x |op| y
f| x
x |f
```

Specification operators express statement-like facts:

```mlg
x "in" X
A \:subset:/ B
```

Operator resolution is type-aware. Directed forms such as `x :* y`, `x *: y`, and `x :*: y` tell the checker which operand type to use when resolving notation. Plain operator forms first look in local scope, then global definitions, then matching `Disambiguates:` entries.
