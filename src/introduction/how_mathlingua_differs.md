# How MathLingua Differs

MathLingua sits between informal mathematical prose and fully formal proof languages.

Compared with LaTeX, MathLingua gives names and structure to definitions, theorems, requirements, notation, resources, people, and prose. The renderer can use that structure to show cards, link definitions, choose written or called forms, and keep source code available.

Compared with theorem provers, MathLingua is intentionally lighter. It checks syntax, references, scoping, and declared requirements, but it does not prove theorem conclusions. Authors can write mathematics in a style that still feels like a textbook or reference library.

Compared with plain Markdown, MathLingua separates prose from mathematical formulation. `Text:` blocks can use Markdown and LaTeX for exposition, while `Describes:`, `Defines:`, `States:`, `Theorem:`, and related items carry structured mathematical content.

The goal is useful mathematical infrastructure without forcing every author to formalize every proof.
