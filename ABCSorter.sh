#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

FILE="$1"

if [ ! -f "$FILE" ]; then
    echo "Error: File $FILE does not exist."
    exit 1
fi

OUTPUT_FILE="sorted_$(basename "$FILE")"

echo "Sorting $FILE alphabetically..."
sort "$FILE" > "$OUTPUT_FILE"

echo "Done! Sorted content saved to: $OUTPUT_FILE"
