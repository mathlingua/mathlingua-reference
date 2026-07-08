# Type Checking

`mlg check` runs after parsing and validates the semantic consistency that MathLingua currently supports.

It checks command definitions, command references, argument shapes, symbol scope, requirements, capabilities, IDs, table-of-contents files, and several rendering/documentation conditions.

The checker is intentionally not a theorem prover. It does not prove mathematical truth. It verifies that the text is syntactically valid, that referenced commands and capabilities exist, that symbols are declared before use, and that the current context establishes the requirements declared by the relevant commands.

When a requirement cannot be shown from the current context, diagnostics use the wording `Could not establish requirement ...`.

For a compact inventory, see [What Is Checked](what_is_checked.md) and [What Is Not Checked](what_is_not_checked.md).
