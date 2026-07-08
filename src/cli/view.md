
# `mlg view`

`mlg view` serves an interactive rendered view of the current collection.

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

`Requires:` is visible on cards. `Enables:`, `Documented:`, IDs, URLs, and similar details appear in the expandable details area.
