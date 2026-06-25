#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <directory_path> <days>"
    exit 1
fi

DIR="$1"
DAYS="$2"

if [ ! -d "$DIR" ]; then
    echo "Error: Directory $DIR does not exist."
    exit 1
fi

echo "Searching for files in $DIR older than $DAYS days..."
find "$DIR" -type f -mtime +"$DAYS" -exec echo "Deleting: {}" \;
find "$DIR" -type f -mtime +"$DAYS" -delete

echo "Cleanup completed."
