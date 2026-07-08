# Text

Documented text wrappers all use quoted source text. The structural parser strips the outer quotes and does not interpret escape sequences.

The main wrappers are:

- `OpenText` for prose fields
- `CalledText` for non-math rendering templates
- `WrittenText` for math-mode rendering templates
- `WritingText` for raw writing-template text

Quoted text may span multiple source lines in supported text sections.
