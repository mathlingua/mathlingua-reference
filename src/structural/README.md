# Structural Language

The structural language is the line-oriented layer of MathLingua. It organizes files into groups and sections.

```mlg
[\set]
Describes: X
Documented:
. called: "set"
Id: "059126b9-dc83-41a2-aa1c-84f8e942f8d6"
```

A group has an optional bracketed heading followed by sections. The first section label determines the group kind. Section labels are case-sensitive and must appear in the order expected by that group.

Argument lines are normally indented two spaces under a section and may be written with `. ` for list-like content.
