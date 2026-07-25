# `mlg export`

`mlg export` checks and renders the current collection, then builds a static
copy of the viewer into the collection's `docs/` directory. The command requires
Node.js and npm because it runs the embedded Next.js build.

```text
mlg export [--base-path PATH] [--cname DOMAIN] [--force]
```

- Output always goes to `docs/` at the collection root (the conventional GitHub
  Pages source folder), alongside `content/` and `metadata/`.
- Export refuses to replace a nonempty `docs/` unless `--force` is present, and
  errors if `docs/` exists as a file.
- `--base-path` configures deployment below a domain subpath, such as
  `/repo-name`. It must be a path, not a URL, and may not contain a query string
  or fragment.
- `--cname DOMAIN` writes a GitHub Pages `CNAME` file. It must be a domain name,
  not a URL, and may not be empty.
- Every export includes `.nojekyll` and the per-route JSON data used by the
  static viewer.

The command stops before building if the collection has no files to export, or
if it cannot be checked or rendered. Missing viewer dependencies are installed
automatically.
