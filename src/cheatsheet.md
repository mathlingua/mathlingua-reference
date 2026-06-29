# Cheatsheet

A one-page tour of MathLingua syntax. Skim it top to bottom to get a feel for
the language, then follow the links into the rest of the book to go deeper.

A `.mlg` file has **two layers** that interleave:

- **Structural** — line-oriented groups (`Describes`, `Theorem`, `forAll`, …).
- **Formulation** — the mathematics inside sections (`f(x_)`, `x "in" A`,
  `\group:over{A}`, …).

Most lines are parsed structurally; whenever a section expects a formula, the
text is handed to the formulation parser.

---

## File shape at a glance

```text
[\function:on{A}:to{B}]      -- heading (optional for some groups)
Describes: f(x__)            -- first section label sets the group kind
when:                        -- a section with no inline argument
. A, B is \set               -- a ". " argument line (indent +2)
Documented:
. called: "function on $A?$ to $B?$"
```

- A document is a sequence of **groups**, separated by blank lines.
- A group is an optional `[heading]` followed by **sections** (`label:`).
- The **first section label** — not the heading — decides the group kind.
- Sections are **case-sensitive** and must appear **in their defined order**;
  optional ones may be omitted.
- `. arg` is an argument line, indented two spaces under its section. It is the
  preferred way to write repeated arguments.
- Lines whose trimmed text starts with `--` are comments. Blank lines end a
  block; comments do not.

See [Structural → Document](structural/document.md).

---

## Lexical basics

```text
abc   x_1   123        -- identifier-like names (start/end alphanumeric)
`*`   `*+`  `>=`        -- stropped symbolic names (operator chars only)
x_    value_           -- placeholder       (ends in one _)
x__                    -- magnetic placeholder (ends in __, function-like)
```

Reserved words in formulations: `is`, `is?`, `is_not?`, `via`.

Quoted text strips only the **outer quotes** — no escape sequences:

```text
Title: "Algebra"
```

Multiline formulations begin with a line that is exactly `(`, `[`, `{`, or `(.`
and end with the matching `)`, `]`, `}`, or `.)` at the same indent.

See [Forms → Names](formulation/forms/names.md),
[Placeholder Names](formulation/forms/placeholder_names.md).

---

## Forms & declarations

Forms describe shape; declarations (`::=`) name a form.

```text
x                      -- name
f(x_)                  -- function form (ordinary placeholders)
f(x__)                 -- function form (one magnetic placeholder)
(x_, y_)               -- tuple (>= 2 elements; 1-tuples not allowed)
{x_ : ...}             -- set/collection form
g ::= f(x_, y_)        -- declaration names a form
X ::= (x_, y_)
G ::= (X, *, e)        -- declares G, X, e (operators not declared)

x_ |plus| y_           -- infix operator form
neg| x_                -- prefix operator form
x_ |prime              -- postfix operator form
```

See [Forms](formulation/forms/README.md),
[Operators](formulation/forms/operators.md),
[Structural declarations & equality](structural_declarations_value_declarations_and_equality.md).

---

## Expressions

```text
x + y * z                     -- arithmetic
x = y = z                     -- chained equality
x ^ y ^ z                     -- powers (right-associative)
-(. x + y .)                  -- negation of a grouped expression
f(x, y + z)                   -- application
(x, +, y)                     -- tuple
x[i]                          -- subset/index
x[i, j]
{x_ : x_ "in" A}              -- collection: form : conditions | filter
{x_ : x_ "in" A | x_ = y}
f[| value := x, k := y |]     -- mapping / record literal
(x + y)[:sum:]                -- labeled grouped expression
(. x + y .)[:normalized:]
x |plus| y                    -- named/infix operators
x :|before| y
x |after|: y
x :|both|: y
```

**Precedence**, lowest → highest: specs/predicates · equality & special binary ·
`+ -` · `* /` · powers · named operators & infix commands · unary `+ -` · atoms.
Arithmetic is left-associative; powers are right-associative.

See [Expressions](formulation/expressions/README.md),
[Precedence](formulation/precedence.md).

---

## Statements: `is`, specs, `via`

```text
x is \set                              -- type statement (spaces required)
f(x_) is \function:on{A}:to{B}
f(x__) is \function
x, y is \set                           -- multiple subjects
X \:subset:/ Y                         -- specification command

x "in" A                               -- spec statement (quoted operator)

G is \set via X                        -- subtype / extension view
X, Y is \set via (X, Y)

x is? \even                            -- predicate: "is it...?"
x is_not? \odd
X \:subset?:/ Y
```

See [Types → is](formulation/types/is_keyword.md),
[is?](formulation/types/is_question_keyword.md),
[via](formulation/types/via_keyword.md),
[Operators → Spec operators](formulation/operators/spec_operators.md).

---

## Commands

Commands start with `\` and name concepts. The **signature** is the shape with
arguments removed (`\function:on{A}:to{B}` → `\function:on:to`).

```text
\set
\closed.set                            -- dotted namespacing
\Z{n}                                  -- curly argument group (required)
\function:on{A}:to{B}                  -- tail parts :on :to each need {...}
\function:on{A}:to{B}(x)               -- trailing (...) is an invocation group
\group:over{A}

[\function:on{A}:?to{B}]               -- :? makes a tail optional at use sites
x \.divides./ y                        -- infix command (\. ... ./)
\(continuous, bounded)::function:on{A}:to{B}   -- refined command (statement-only)
```

Built-in keywords use two backslashes: `\\type`, `\\statement`, `\\expression`,
`\\specification`, `\\abstract`.

See [Expressions → Command](formulation/expressions/command_expressions.md),
[Infix command](formulation/expressions/infix_command_expressions.md),
[Refined command](formulation/expressions/refined_command_expressions.md),
[Command headers](headers/command_headers.md).

---

## Aliases

```text
alias:  f(x_) :=> x_ + 1                -- expression alias  (:=>)
symbol: x_ "in" R :-> x_ is \real       -- spec-operator alias (:->)
writing: f(x_) :~> f(x_)                -- writing alias (:~>), raw text body
```

See [Aliases](formulation/aliases/README.md).

---

## Top-level groups

| Group | Heading | Purpose |
| --- | --- | --- |
| `Title` / `Section` / `Subsection` / `Subsubsection` | none | prose headings |
| `Describes` | command | introduce a command for a form |
| `Defines` | command | define a statement/spec/type fact |
| `Refines` | command | define a refined command |
| `States` | command | named statement with a `that:` body |
| `Axiom` / `Theorem` / `Corollary` / `Lemma` / `Conjecture` | optional command | assertions |
| `Person` | author `[@ada.lovelace]` | person metadata |
| `Resource` | resource `[$principia]` | bibliography metadata |
| `Specify` | none | numeric-domain metadata |

`Describes`, `Defines`, `Refines` **must** include a `called:` item under
`Documented:`. See [Structural → Top Level](structural/top_level/README.md).

### Definition skeletons

```text
[\set]
Describes: X                            -- + using when extends specifies satisfies
Documented:                             --   Provides Justified Documented
. called: "set"                         --   Aliases References Metadata

[\foo{s}]
Defines: x is \bar{s}                   -- + using when expresses + support sections
Documented:
. called: "foo"

[\commutative{S}]
States:
when: S is \set
that:
. forAll: x, y is \element.of{S}
  then:
  . x * y = y * x
```

See [Describes](structural/top_level/definitions/describes.md),
[Defines](structural/top_level/definitions/defines.md),
[States](structural/top_level/definitions/states.md).

### Theorem-like skeleton

`then:` is required; `given:`, `where:`, `iff:` are optional (`Corollary` also
needs `of:`).

```text
Theorem:
given:
. X, Y is \set
. f is \function:on{X}:to{Y}
then:
. f is? \function:on{X}:to{Y}
```

See [Propositions](structural/top_level/propositions/README.md).

---

## Clause groups

Used inside `satisfies:`, `then:`, `that:`, `suchThat:`, … Each accepts an inline
formula or nested clause groups.

```text
forAll:...                not: ...            if: ...
where: ...                allOf: ...          then: ...
then: ...                 anyOf: ...
                          oneOf: ...
exists: ...               iff: ...            piecewise:
suchThat: ...             then: ...           if: / then: / else:

given: ...                existsUnique: ...
then: ...                 suchThat: ...
```

See [Clause](structural/clause/README.md).

---

## Support sections

- **`Provides:`** — `symbol:` (aliases / spec operators) and `connection:` groups
  (`to:`, `means:`, `signifies:`, `viewable:`, `through:`).
- **`Documented:`** — `written:`, `called:`, `writing:`, `overview:`, `related:`,
  `discoverer:`.
- **`Justified:`** — `label:` / `by:` groups with `comment:`.
- **`Aliases:`** — `alias:` groups. **`Metadata:`** — `id:`, `version:`.
- **`References:`** — resource refs like `$book.chapter`.

Rendering: `called:` is plain text (`"function on $A?$ to $B?$"`), `written:` is
a math template (`"f? \: : \: A? \rightarrow B?"`).

See [Provides](structural/top_level/definitions/provides/README.md),
[Documented](structural/top_level/definitions/documented/README.md),
[Rendering](rendering/README.md).

---

## Footguns

- Section order and capitalization are strict.
- Group kind comes from the **first section label**, not the heading.
- Some singular sections keep only the first valid value.
- Quotes strip outer quotes only — no escapes.
- A section-shaped colon in a non-text argument line starts a nested group.
- One-element tuples are not supported; subsets are name-only.
- Refined command expressions are **not** ordinary expressions (statement
  contexts only).
- Command tail parts always require `{...}`.

For parser-level ground truth, see the
[Formulation](formulation/README.md), [Structural](structural/README.md),
and [Headers](headers/README.md) chapters, and
[Type Checking](type_checking/README.md).
