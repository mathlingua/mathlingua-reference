# Collections

A MathLingua collection is a directory tree containing `.mlg` files. `mlg check` and `mlg view` operate on the collection rooted at the current directory.

Directories may contain a `toc` file. Without a `toc`, files and directories are shown alphabetically in the viewer. With a `toc`, every `.mlg` file and subdirectory in that directory must be listed exactly once.

A `toc` entry can rename or hide an item:

```text
introduction.mlg
scratch.mlg -> HIDDEN
set_theory.mlg -> Set Theory
algebra -> Algebra
```

If a listed file or directory does not exist, or if a `.mlg` file or subdirectory is missing from the `toc`, `mlg check` reports an error.
