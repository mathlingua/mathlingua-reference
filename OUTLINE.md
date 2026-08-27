# The Mathlingua Reference — Outline

A working skeleton of the whole reference: every section and page in current
`toc` order, each with a one-line purpose. Use it to see the shape of the
document, judge whether the organization and coverage are right, then rearrange
here before touching the real content.

**Legend**

- `##` headings are the top-level sections (the "chapters" a reader steps
  through). Nested bullets are their subsections and pages, in current order.
- Each **bold** entry is a page or a section; the text after `—` is its purpose.
- A bullet with nested bullets is a **section** (a directory). Every section
  opens with an *Overview* landing page — its purpose is shown on the section
  line itself, so the Overview page is not listed separately.

---

## Introduction

- Opening page of the reference. *(Currently an empty stub — needs front-matter:
  what this book is, who it is for, how to read it.)*

## Getting Started

*— What MathLingua is and how to begin: a structured, checkable, renderable way
to write mathematical knowledge.*

- **Purpose** — why MathLingua exists: precise enough for tooling, yet close to
  ordinary mathematical prose.
- **How Mathlingua Differs** — positions it between informal prose and fully
  formal proof languages.
- **An Example** — a small worked definition combining prose, a command header,
  type requirements, rendering metadata, and an auto-generated ID.
- **Collections** — what a collection is: a directory tree of `.mlg` files.

## Current Implementation Notes

- Rule-focused summary of the behavior actually implemented by the current Rust
  code — the companion to the detailed syntax pages.

## mlg

*— The `mlg` command-line tool for working with a collection.*

- **Introduction** — running `mlg` from the root of a collection.
- **Installation** — building or installing the `mlg` executable.
- **Init** — `mlg init` scaffolds a starter collection.
- **Check** — `mlg check` validates the current collection.
- **Format** — `mlg format` normalizes formatting of every `.mlg` file.
- **Export** — `mlg export` builds the static viewer into `docs/`.
- **Clean** — `mlg clean` removes the generated `docs/`.
- **Release** — `mlg release` records a version snapshot.
- **Language Server** — `mlg lsp` runs the LSP server for editors.
- **View** — `mlg view` serves the interactive rendered view.
- **Version** — `mlg version` prints the installed tool version.

## Formulation

*— The mathematical syntax used inside structural sections.*

- **Phrases** — defines "phrase" as a unit of formulation syntax.
- **Structural Declarations, Value Declarations, and Equality** — distinguishes
  the related operators `::=`, `:=`, and `=`.
- **Forms** — the *shape* of notation rather than a concrete value.
  - **Names** — identifier-like names and stropped symbolic names.
  - **Operators** — infix, prefix, and postfix operator forms.
  - **Placeholder Names** — placeholders ending in one underscore (`x_`).
  - **Tuples** — parenthesized forms of two or more elements.
  - **Collections** — set-like / collection-like form shapes.
  - **Variadic Forms** — magnetic placeholders (`x__`) and ranged variadic
    mapping parameters (`f(x_[i_ := 1...n])`).
- **Types** — `is` type statements.
  - **Is Keyword** — `is` records or requires a type fact.
  - **Variadic Is** — one `is` statement applied to several subjects.
  - **Is Question Keyword** — the predicate forms `is?` / `is_not?`.
  - **Via Keyword** — `via` records the view used by an extension.
- **Operators** — the three operator families.
  - **Spec Operators** — express facts such as membership.
  - **Special Operators** — multi-character symbolic operators.
  - **Named Operators** — a name surrounded by bars (`|op|`).
- **Precedence** — how expression forms bind, loosest to tightest.
- **Expressions** — concrete terms and predicates used in clauses, definitions,
  aliases, and rendering helpers.
  - **Operator Expressions** — operator application (`x * y`, `x :* y`, …) and
    how it resolves.
  - **Grouped Expressions** — parenthesized grouping, `(…)` and `(. … .)`.
  - **Function Literals** — anonymous function values written with `=>`, and the
    function *type* arrow `->`.
  - **Tuple Expressions** — parenthesized tuples of two or more elements.
  - **Collection Expressions** — set/collection builder `{ x : … | … }`.
  - **Indexed Expressions** — subscript/index (subset) calls.
  - **Command Expressions** — `\command` call syntax with `{}`, `()`, `:part{}`.
  - **Infix Command Expressions** — a command placed between two expressions
    (`\. … ./`).
  - **Refined Command Expressions** — adjective-like refinements on a base
    command type.
  - **Named Function Calls** — supplying a function's arguments by name.
  - **Inferred Parameters** — command arguments written `X?`.
  - **Membership Expressions** — `member_of` relating a subject to a collection.
  - **Spec Literals** — values of `\specification` with an implicit `?` subject.
  - **Builds** — `\type@value` / `\type@!value`, viewing a value at a type.
  - **Equality Expressions** — `=` and `!=`.
  - **Variadic Slices** — `x...` / `x[1...i_...n]` and their broadcasts, plus the
    `\\map` and reduce builtins.
  - **Labeled Expressions** — attaching a `[:label:]` to a grouped formulation.
- **Aliases** — introduce alternate notation or rendering behavior.
  - **Expression Aliases** — `:=>`.
  - **Writing Aliases** — `:~>`, mapping names to render templates.
  - **Spec Operator Aliases** — `:->`.
- **Labels** — identify items inside brackets or nested groups.

## Structural

*— The line-oriented layer: top-level groups, clauses, and their sections.*

- **Document** — a `.mlg` document is a sequence of top-level groups.
- **Top Level** — the full set of top-level item groups.
  - **Definitions** — command-backed definition groups and their support
    sections.
    - **Defines** — `Defines:` introduces a mathematical form or typed
      declaration (formerly `Describes:`).
    - **Declares** — `Declares:` introduces a command by an `is` or spec
      statement (formerly `Defines:`).
    - **Refines** — `Refines:` refines an existing type with an adjective,
      including the `implicitly:` / `explicitly:` markers.
    - **States** — `States:` states notation without introducing a value.
    - **Disambiguates** — `Disambiguates:` globally resolves an ambiguous form.
    - **Requires and Enables** — `Requires:` / `Enables:` (formerly `Provides:`).
      - **Capability** — `capability:` items granting notation or definitions.
      - **Expression Alias** — `:=>` aliases inside capabilities.
      - **Spec Operator Alias** — `:->` specification aliases.
    - **Documented** — rendering and metadata documentation items.
      - **Text** — the quoted-text wrappers used by documented items.
        - **Open Text** — quoted prose text.
        - **Written Text** — a rendering template interpreted in math mode.
        - **Called Text** — a prose-with-math rendering template.
        - **Writing Text** — raw text for nested `writing:` groups.
      - **Written** — `written:` math-mode render template.
      - **Called** — `called:` prose render template.
      - **Adjective** — `adjective:` (required for `Refines:`).
      - **Description** — `description:` prose description.
      - **Writing** — a nested `writing:` render alias.
      - **Overview** — the `overview:` open-text documented item.
      - **Related** — `related:` related-item notes.
      - **Discoverer** — `discoverer:` discoverer information.
      - **Notes** — `notes:` prose reminders.
    - **Justification** — `Justification:` `have:` / `asserting:` entries that
      discharge `[:label:]` formulations (formerly `Justified:`).
    - **Alias** — `Aliases:` with nested `alias:` groups.
  - **Propositions** — the proposition-like items `Axiom:`, `Theorem:`,
    `Conjecture:`.
    - **Theorem** — `Theorem:` item.
    - **Axiom** — `Axiom:` item.
    - **Conjecture** — `Conjecture:` item, a statement with no claimed proof.
  - **Relation** — `Relation:` states a bidirectional relationship
    (`between:` / `and:`).
  - **Equivalent** — `Equivalent:` names a class of interchangeable items.
  - **Topic** — `Topic:` names a documentation topic.
  - **Specify** — top-level `Specify:` numeric-domain metadata (page).
  - **Person** — `Person:` an author / person record.
  - **Writing** — `Writing:` collection-wide rendering aliases, plus the
    per-item `Writing:` override.
  - **Text Placeholders** — the opaque `TextTheorem:` / `TextAxiom:` /
    `TextConjecture:` / `TextDefinition:` prose stand-ins.
  - **Resource** — `Resource:` a bibliographic reference.
    - **Title** — `title:` display title.
    - **Author** — `author:` one or more authors.
    - **Offset** — `offset:` page/numbering offset.
    - **Url** — `url:` resource URL.
    - **Homepage** — `homepage:` homepage URL or prose.
    - **Type** — `type:` resource type (book, article, note, webpage…).
    - **Edition** — `edition:` edition information.
    - **Editor** — `editor:` editor information.
    - **Institution** — `institution:` institution information.
    - **Journal** — `journal:` journal information.
    - **Publisher** — `publisher:` publisher information.
    - **Volume** — `volume:` volume information.
    - **Month** — `month:` month information.
    - **Year** — `year:` year information.
    - **Description** — `description:` prose description.
  - **Prose** — top-level prose groups that render directly on the page.
    - **Title** — `Title:` page title.
    - **SectionTitle** — `SectionTitle:` section heading.
    - **SubsectionTitle** — `SubsectionTitle:` subsection heading.
    - **Text** — `Text:` prose block.
- **Clause** — clauses used in `satisfies:`, `then:`, `that:`, `where:`,
  `suchThat:`.
  - **Let** — `let:` introduces local bindings for a `then:` block.
  - **Not** — `not:` negates one clause.
  - **All Of** — `allOf:` all sub-clauses required.
  - **Any Of** — `anyOf:` at least one alternative holds.
  - **One Of** — `oneOf:` mutually exclusive alternatives.
  - **Equivalently** — `equivalently:` all sub-clauses are equivalent.
  - **Exists** — `exists:` introduces symbols with optional `suchThat:`.
  - **Exists Unique** — `existsUnique:` unique-existence variant.
  - **For All** — `forAll:` universal quantification with `where:` / `then:`.
  - **If** — `if:` assumes a condition and checks `then:` in that context.
  - **Have / Iff** — the biconditional `have:` … `iff:`.
  - **Have / Asserting** — `have:` … `asserting:` with optional `because:` /
    `by:`.
  - **Piecewise** — `piecewise:` with `if:` / `then:` and optional `else:`.
  - **Builtin Clause Commands** — the inline `\\forAll{…}:then{…}` command forms.
  - **Specification** — a fact via `is` or an infix spec command (`\:…:/`).
  - **Expression** — a clause argument that is an expression.
  - **Statements** — declaration and specification statements in clauses.
- **Specify** — the top-level `Specify:` group for numeric-domain metadata.
  - **Positive Int** — `positive:` + `int:` → positive integer.
  - **Negative Int** — `negative:` + `int:` → negative integer.
  - **Positive Decimal** — `positive:` + `decimal:` → positive decimal.
  - **Negative Decimal** — `negative:` + `decimal:` → negative decimal.
  - **Zero** — `zero:` → the zero classification.
- **Metadata** — the legacy `Metadata:` section and its nested items.
  - **Id** — nested `id:` vs. the current top-level `Id:` identity section.
  - **Version** — nested `version:` version text.

## Headers

*— The bracketed `[...]` headings a structural group can carry.*

- **Label Headers** — bracketed names for theorem-like labels and nested labels.
- **Author Headers** — headers beginning with `@`, used by `Person:`.
- **Resource Headers** — headers beginning with `$`, used by `Resource:` and
  `References:`.
- **Topic Headers** — headers beginning with `#`, used by `Topic:`.
- **Command Headers** — define the shape of a command.
- **Variadic Command Parameters** — variadic curly arguments (`x...`,
  `x[i_ := 1...n]`) and the 2D form.
- **Mapping Parameter Headers** — selecting a mapping's parameters (`f.x_`) and
  the specialized signatures they produce.
- **Infix Specification Command Headers** — the `\:…:/` form.
- **Infix Expression Command Headers** — command notation between two
  expressions.
- **Special Operator Headers** — operator-form headers using special (`+`, `-`,
  `:-:`, …) or named (`|op|`) operators.

## Type Checking

*— What `mlg check` validates after parsing.*

- **Type System** — the kinds of facts the checker tracks and the six builtin
  types.
- **Type Resolution** — how operators resolve, and how builds and coercion
  relations are used.
- **What is Checked** — the consistency the checker enforces.
- **What is Not Checked** — the limits: it does not prove theorems or verify that
  axioms/definitions are mathematically true.

## Rendering

- How rendering works — driven by documented names and writing aliases.

## Cheatsheet

- A compact one-page summary of the implemented syntax.
