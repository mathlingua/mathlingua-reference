
# Cheatsheet

This page summarizes the syntax implemented by the current Rust code. For the full rule list, see [Current Implementation Notes](current_implementation.md).

## Page Content

Top-level prose blocks render directly on the page, not inside cards.

```text
Title: "A Page Title"
SectionTitle: "A Section"
SubsectionTitle: "A Subsection"
Text: "Markdown prose with $x \in X$ and display math."
```

`Text:` supports Markdown and LaTeX. Quoted text fields may span multiple source lines.

## Commands And Builtins

Commands start with one backslash. Builtin commands and builtin types start with two backslashes.

```text
\set
\function:on{A}:to{B}
\function:?on{A}:?to{B}      -- optional tail parts at use sites
x \.set.union./ y            -- infix command
\(injective)::function        -- refined command type
```

Common builtin types include `\\type`, `\\statement`, `\\expression`, `\\specification`, and `\\opaque`. `\\opaque` is satisfied by any declared value, but it does not establish any more specific type information.

Builtin clause commands are expression forms, with semicolon-separated arguments:

```text
\\not{P}
\\and{P; Q}
\\or{P; Q}
\\exists{x, y is \real; n is \natural}:suchThat{x * n > y}
\\existsUnique{x is \real}
\\forAll{x is \set}:then{x is? \set}
\\have{P}:iff{Q}
```

## Expressions

```text
x * y                -- plain operator, resolved locally or globally
x :* y               -- resolve operator from the left operand type
x *: y               -- resolve operator from the right operand type
x :*: y              -- resolve operator from the common ancestor type

x |op| y             -- named infix operator
f| x                 -- named prefix operator, same arity as f(x)
x |f                 -- named postfix operator, same arity as f(x)

(.x + y.)            -- source grouping that renders as x + y
```

Any sequence of special-operator characters can be an operator, including names with suffixes such as `*_1` and `*_free`. Equality and inequality, `=` and `!=`, are accepted for any types even when a type-specific capability is not defined.

## Declarations And Statements

```text
X is \set
X, Y is \set
G is \set via X
X := \set@{x_ : x_ is \real}
f(x__) := x__ is \function:on{A}:to{A}
x is? \set
x is_not? \set
```

Use `X := ...` when the right-hand side is a definition value. Use `X is ...` when assigning or requiring a described type.

## Set Expressions

```text
{x_ : x_ is \set}
{x_ : x_ is \set | x_ != \empty.set}
{z_ ::= (a_, b_) : a_ "in" A; b_ "in" B | z_ := \ordered.pair:of{a_}:and{b_}}
```

The `: ...` part contains specifications. The optional `| ...` part contains a predicate expression or a value binding such as `z_ := ...`.

## Top-Level Items

Every top-level item must have an `Id:`. `mlg check` generates missing UUID v4 IDs before checking and reports duplicate IDs.

```text
[\set]
Describes: X
Requires:
. capability: x_ "in" X :-> \\opaque
  written: "x_? \in X?"
Documented:
. called: "set"
Id: "059126b9-dc83-41a2-aa1c-84f8e942f8d6"
```

`Describes:` and `Defines:` require at least one of `called:` or `written:` in `Documented:`. Missing `called:` or `written:` rendering is generated from the one that is present. `Refines:` requires `adjective:` and may have `written:`, but may not have `called:`.

## Requires And Enables

`Requires:` describes capabilities or definitions that are part of the construct. `Enables:` describes additional capabilities, casts, and views.

```text
Requires:
. capability: x_ "in" X :-> x_ member_of X
  written: "x_? \in X?"
. definition: \natural.0 is \natural

Enables:
. capability: x_ - y_ :=> x_ \.set.minus./ y_
. from: Y ::= {y__ : ...}
  capability: x_ "in" X :-> x_ member_of Y
. from: P ::= {(p_, q_) : ...}
  as: f(p_) := q_
. viewable:
  as: r := \as.rational{n} is \rational
  states: n \.embedded.to./ r
```

The checker unions capabilities from `Requires:` and `Enables:` when resolving notation.

## Clauses

```text
allOf:
. P
. Q

anyOf:
. P
. Q

exists: x is \real

existsUnique: x is \real
suchThat: x > 0

forAll: x "in" X
then: x is? \set

if: P
then: Q

have:
. P
iff: Q
```

`exists:` and `existsUnique:` do not require `suchThat:`. The old `iff: ... then: ...` group is not supported; use `have: ... iff: ...`.

## Writing

A collection may contain one top-level `Writing:` block.

```text
Writing:
. alpha :~> \alpha
. beta :~> \beta
```

The left side must be a plain name. The renderer applies writing aliases to names in expressions, statements, and specifications, including underscore parts and numeric suffixes: `alpha_1` renders as `\alpha_1`, and `alpha123` renders as `\alpha_{123}`.

## People And Resources

```text
[@ada.lovelace]
Person: "Ada Lovelace"
biography: "Markdown biography text."
```

`biography:` is optional. Resource cards use their `title:` as the card title and hyperlink it when `url:` is present; the URL itself is shown in the hidden details accordion.
