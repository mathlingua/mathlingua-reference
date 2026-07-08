# An Example

A small definition can combine prose, a command header, type requirements, rendering metadata, and an automatically generated ID.

```mlg
Text: "A subset is a set whose elements all belong to another set."

[A \\:subset:/ B]
Describes: A
when: B is \set
extends: A is \set
satisfies:
. forAll: x "in" A
  then: x "in" B
Documented:
. called: "subset"
. written: "A? \subseteq B?"
Id: "4196f823-e51d-4568-89aa-83a2d4627bd9"
```

The command header introduces the notation. The `when:` section says what the header parameter `B` must satisfy. The `extends:` section lets the checker use a subset as a set. The `satisfies:` section records the defining condition. `called:` and `written:` tell `mlg view` how to render the item in prose and math contexts.
