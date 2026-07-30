#!/usr/bin/env bash
#
# Create a new reference page as a Mathlingua prose file and register it in its
# directory's `toc` (which controls sidebar order and titles).
#
# Usage: ./new.sh dir title1 [title2 ... titlen]
#   dir     directory under content/ (e.g. formulation/expressions)
#   titleN  snake_case page name; the file becomes content/dir/titleN.mlg

set -euo pipefail

if [[ $# -lt 2 ]]; then
    echo "Usage: $0 dir title1 [title2 ... titlen]" >&2
    exit 1
fi

dir="content/$1"
shift

mkdir -p "$dir"

for title in "$@"; do
    file="$dir/$title.mlg"

    if [[ -e "$file" ]]; then
        echo "Skipping '$title': $file already exists"
        continue
    fi

    title_with_spaces="${title//_/ }"

    title_case=$(echo "$title_with_spaces" | awk '
    {
        for (i = 1; i <= NF; i++) {
            $i = toupper(substr($i,1,1)) tolower(substr($i,2))
        }
        print
    }')

    echo "Creating $file"

    printf 'Title: "%s"\n\nText: "TODO"\n' "$title_case" > "$file"
    echo "$title.mlg -> $title_case" >> "$dir/toc"
done
