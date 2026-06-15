#!/usr/bin/env bash

set -euo pipefail

if [[ $# -lt 2 ]]; then
    echo "Usage: $0 kind title1 [title2 ... titlen]" >&2
    exit 1
fi

kind="$1"
shift

mkdir -p "src/$kind"

for title in "$@"; do
    file="src/$kind/$title.md"

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

    echo "- [$title_case]($kind/$title.md)" >> src/SUMMARY.md
    printf "# %s\n\n" "$title_case" > "$file"
done
