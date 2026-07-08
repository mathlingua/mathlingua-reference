# Clauses

Clauses appear in sections such as `satisfies:`, `then:`, `that:`, `where:`, and `suchThat:`.

A clause can be:

- a declaration statement such as `x is \set`
- an expression such as `P \.and./ Q`
- a nested clause group such as `exists:`, `forAll:`, `if:`, or `have:`

Formulation clause entries are tried as declarations first and expressions second. This lets `x is \set` introduce a type fact in contexts where facts are assumed.
