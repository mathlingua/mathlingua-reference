# `mlg export`

`mlg export` checks and renders the current collection, then builds a static
copy of the viewer. The command requires Node.js and npm because it runs the
embedded Next.js build.

```text
mlg export [-o DIR] [--base-path PATH] [--cname DOMAIN] [--force]
```

- Output defaults to `dist`; use `-o` or `--output` to choose another directory.
- Export refuses to replace a nonempty directory unless `--force` is present.
- `--base-path` configures deployment below a domain subpath.
- `--cname` writes a GitHub Pages `CNAME` file.
- Every export includes `.nojekyll` and the per-route JSON data used by the
  static viewer.

The command stops before building if the collection cannot be checked or
rendered.
