#!/bin/bash

DIR="${1:-.}" 

if [ ! -d "$DIR" ]; then
    echo "Error: $DIR is not a directory."
    exit 1
fi

files_count=$(find "$DIR" -maxdepth 1 -type f | wc -l)
dirs_count=$(find "$DIR" -maxdepth 1 -type d | wc -l)
dirs_count=$((dirs_count - 1))
links_count=$(find "$DIR" -maxdepth 1 -type l | wc -l)

echo "Analysis for directory: $DIR"
echo "--------------------------------"
echo "Files:        $files_count"
echo "Directories:  $dirs_count"
echo "Symbolic Links: $links_count"
