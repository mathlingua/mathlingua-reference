# Represents

`Represents:` is not a current top-level group in the Rust structural parser.

Older notes or examples may mention it as a possible way to connect a representation to an abstract object, but current MathLingua uses more specific groups instead:

- use `Describes:` to introduce a type-like or construct-like command
- use `Defines:` to introduce a defined value, statement, or typed object
- use `States:` to name a statement with a `that:` body
- use `Enables.from:` with `capability:` or `as:` to describe cast-backed behavior
- use an `Enables.relation:` item marked `as: \\view` or
  `as: \\abstraction` to describe a cast relationship

This page is retained so old links do not land on an empty page. New collections should not use `Represents:`.
