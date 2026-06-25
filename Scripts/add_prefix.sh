#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <directory_path> <prefix>"
    exit 1
fi

DIR="$1"
PREFIX="$2"

if [ ! -d "$DIR" ]; then
    echo "Error: $DIR is not a valid directory."
    exit 1
fi

cd "$DIR" || exit 1

count=0
for file in *.txt; do
    [ -e "$file" ] || continue
    mv "$file" "${PREFIX}${file}"
    ((count++))
done

echo "Done! Prefixed $count .txt files with '$PREFIX'."
