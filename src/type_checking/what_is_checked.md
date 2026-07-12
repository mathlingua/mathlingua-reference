
# What Is Checked

The checker validates:

- parsing of formulation, structural, and command-header syntax
- unique top-level IDs
- duplicate command signatures
- required documentation metadata for definitions and refinements
- command references and argument shapes
- refined command references and base/refinement existence
- required `when:` specifications for header parameters
- undeclared symbols
- requirements declared by command `using:` and `when:` sections
- `Requires.definition:` references to top-level `Defines:` items
- capability resolution from `Requires:` and `Enables:`
- cast-backed `from:` capabilities and `from: ... as:` bindings
- `relation:` declarations, their target `is` statement, and `\\view` or
  `\\abstraction` cast behavior
- `toc` files for missing, extra, hidden, or renamed entries

For `Describes:`, `Defines:`, and `Refines:` targets, symbols in the target must be specified directly or transitively through `extends:` unless they are the item being described by a special form such as an infix specification command.
