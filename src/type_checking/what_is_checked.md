
# What Is Checked

The checker validates:

- parsing of formulation, structural, and command-header syntax
- unique top-level IDs (and that each `Id:` value is a UUID)
- duplicate command signatures across definition kinds
- required rendering metadata: `Defines:` and `Describes:` need a `called:` or
  `written:` item, and `Refines:` needs an `adjective:` item, in `Documented:`
- command references and argument shapes
- refined command references and base/refinement existence
- required `when:` specifications for header parameters
- undeclared symbols
- `is` specifications used only in binding positions (`exists:`, `given:`,
  `forAll:`); statement positions require the predicate form `is?` (and infix
  specs require `\:...?:/`)
- requirements declared by command `using:` and `when:` sections
- `Requires.definition:` references to top-level `Defines:` items
- capability resolution from `Requires:` and `Enables:`
- cast-backed `from:` capabilities and `from: ... as:` bindings
- `Enables: relation:` declarations, their target `is` statement, and the
  `\\coercion` (soft `as`) or `\\encoding` (hard `as!`) cast behavior their
  `represents:` selects
- `toc` files for missing, extra, hidden, or renamed entries

For `Describes:`, `Defines:`, and `Refines:` targets, symbols in the target must be specified directly or transitively through `extends:` unless they are the item being described by a special form such as an infix specification command.
