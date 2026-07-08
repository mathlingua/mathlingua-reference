# Purpose

MathLingua's purpose is to let authors write mathematics in a form that is precise enough for tooling but still close to ordinary mathematical prose.

The language is not a theorem prover. Instead, it checks the things that make a mathematical library navigable and consistent:

- command and operator names exist before they are used
- arguments have the right shape
- symbols are declared before use
- declared requirements can be established from local context
- definitions have renderable names
- files and table-of-contents entries are consistent

The result is a source format that can support browsing, rendering, definition lookup, syntax-aware editing, and future semantic tooling without asking authors to encode full formal proofs.
