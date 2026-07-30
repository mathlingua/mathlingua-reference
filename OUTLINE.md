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
  the related operators `:=`, `::=`, `:=:`, and `=`.
- **Forms** — the *shape* of notation rather than a concrete value.
  - **Names** — identifier-like names and stropped symbolic names.
  - **Operators** — infix, prefix, and postfix operator forms.
  - **Placeholder Names** — placeholders ending in one underscore (`x_`).
  - **Tuples** — parenthesized forms of two or more elements.
  - **Collections** — set-like / collection-like form shapes.
  - **Variadic Forms** — magnetic placeholders such as `x__`.
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
  - **Mapping Expressions** — anonymous function values written with `|->`.
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
  - **Casts** — viewing an expression as another type.
  - **Equality Expressions** — `=` and `!=`.
  - **Variadic Equality Expressions** — chains comparing three or more
    expressions.
  - **Labeled Expressions** — attaching a label to an expression.
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
    - **Describes** — `Describes:` defines a concept characterized by a subject.
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
    - **Justified** — nested justification items.
      - **Label** — a `label:` justification item.
      - **By** — a `by:` justification item.
    - **Alias** — `Aliases:` with nested `alias:` groups.
    - **Defines** — `Defines:` defines a new value or object.
    - **Refines** — `Refines:` refines an existing type with an adjective.
    - **Disambiguates** — `Disambiguates:` globally resolves an ambiguous form.
    - **States** — `States:` states notation without introducing a value.
  - **Propositions** — the proposition-like items `Axiom:`, `Theorem:`,
    `Corollary:`.
    - **Theorem** — `Theorem:` item.
    - **Corollary** — `Corollary:` item (adds a required `of:`).
    - **Axiom** — `Axiom:` item.
  - **Relation** — `Relation:` states a bidirectional relationship
    (`between:` / `and:`).
  - **Equivalent** — `Equivalent:` names a class of interchangeable items.
  - **Topic** — `Topic:` names a documentation topic.
  - **Specify** — top-level `Specify:` numeric-domain metadata (page).
  - **Person** — `Person:` an author / person record.
  - **Writing** — `Writing:` a top-level rendering alias.
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
  - **Given** — nested `given:` assumptions for a local `then:` block.
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
  - **Piecewise** — `piecewise:` with `if:` / `then:` and optional `else:`.
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
- **Command Headers** — define the shape of a command.
- **Variadic Command Parameters** — magnetic placeholders ending in `__`.
- **Infix Specification Command Headers** — the `\:…:/` form.
- **Infix Expression Command Headers** — command notation between two
  expressions.
- **Special Operator Headers** — operator-form headers using special (`+`, `-`,
  `:-:`, …) or named (`|op|`) operators.

## Type Checking

*— What `mlg check` validates after parsing.*

- **Type System** — the kinds of facts the checker tracks.
- **Type Resolution** — how plain operators and function-like notation resolve
  (local scope, then global definitions).
- **What is Checked** — the consistency the checker enforces.
- **What is Not Checked** — the limits: it does not prove theorems or verify that
  axioms/definitions are mathematically true.

## Rendering

- How rendering works — driven by documented names and writing aliases.

## Cheatsheet

- A compact one-page summary of the implemented syntax.
