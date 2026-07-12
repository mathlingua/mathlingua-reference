
# `mlg view`

`mlg view` serves an interactive rendered view of the current collection.

It listens on `0.0.0.0` so the viewer can be reached from another device on the
network, while displaying a convenient `http://localhost:<port>/` URL. The
default port is 3000 and `--port` selects another port. Node.js and npm are
required; missing viewer dependencies are installed automatically.

Refreshing the browser reloads the latest source if the collection checks successfully. If the updated source has an error, the prior valid view remains in the browser and the server prints the errors to standard output so the source can be fixed.

The view supports:

- a responsive outline that starts open on desktop and closed on narrow screens
- `toc` ordering, renaming, and hidden entries
- page-level `Title:`, `SectionTitle:`, `SubsectionTitle:`, and `Text:` blocks
- rendered cards for top-level mathematical entries
- source flip controls on cards
- clickable definitions that open in an etched definition area
- previous/next page navigation using page names
- theme selection from the toolbar menu
- background route warming and loading skeletons for faster navigation
- MathLingua-rendered fenced blocks tagged `mlg` inside `Text:` Markdown

`Requires:` is visible on cards. `Enables:`, `Documented:`, IDs, URLs, and similar details appear in the expandable details area.
