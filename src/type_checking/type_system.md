
# Type System

The checker tracks facts of two main kinds:

- type facts, such as `G is \set`
- specification facts, such as `x "in" G`

Facts are introduced by command headers, `using:`, `when:`, theorem `given:`, local clause groups, `where:`, declarations, and assumptions created by clauses such as `exists:` and `forAll:`.

`extends:` records implications between types or specifications. If `\group` extends `\set`, then a known fact `G is \group` can establish `G is \set`.

Builtin types use two leading backslashes. `\\type` is true for commands introduced by `Describes:`. `\\opaque` is satisfied by any declared value, but it contributes no concrete type information and does not enable type-specific capabilities.

Equality and inequality, `=` and `!=`, are always accepted for declared symbols, even when a type-specific equality capability has not been defined.
