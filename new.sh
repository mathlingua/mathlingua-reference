#!/usr/bin/env bash

set -euo pipefail

if [[ $# -ne 2 ]]; then
    echo "Usage: $0 title_snake_case" >&2
    exit 1
fi

kind="$1"
title="$2"

# Convert underscores to spaces
title_with_spaces="${title//_/ }"

# Convert each word to Title Case
title_case=$(echo "$title_with_spaces" | awk '
{
    for (i = 1; i <= NF; i++) {
        $i = toupper(substr($i,1,1)) tolower(substr($i,2))
    }
    print
}')

mkdir -p src/$kind

echo "($title_case)[$kind/$input]" >> src/SUMMARY.md
echo "# $title_case\n\n" >> src/$kind/$input.md
