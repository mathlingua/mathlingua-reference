# Open Text

`OpenText` is quoted prose text.

```mlg
Text: "A paragraph of Markdown prose."
```

The structural parser strips the outer quotes and does not interpret escape sequences.

`OpenText` is used by prose blocks, theorem titles, biographies, resource fields, descriptions, and many metadata fields. In viewer prose contexts, Markdown and LaTeX are rendered.

Because open text is prose, command-looking text inside it is not treated as a semantic command reference unless another feature explicitly parses it.
