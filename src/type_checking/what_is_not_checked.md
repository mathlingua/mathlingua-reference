# What Is Not Checked

MathLingua's checker does not prove theorem conclusions or verify that axioms and definitions are mathematically true.

A theorem conclusion is checked for syntax, command references, declared symbols, and local requirements, but not for semantic consequence from the assumptions.

The checker also does not infer arbitrary mathematics. If a command requires a fact, that fact must be directly available from declarations, extensions, capabilities, casts, or the limited reductions implemented by the checker.

For example, knowing `A is \set` does not automatically establish every theorem about sets. Authors must encode the requirements and capabilities that a command needs, and the checker only follows those implemented rules.
