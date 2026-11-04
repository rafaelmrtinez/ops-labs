#!/bin/bash

FILE="disk-usage.txt"

if [ ! -f "$FILE" ]; then
    echo "disk-usage.txt was not found."
    exit 1
fi

if ! grep -q "Filesystem" "$FILE"; then
    echo "Original disk usage information is missing."
    exit 1
fi

LAST_LINE=$(tail -n 1 "$FILE")

if ! date -d "$LAST_LINE" >/dev/null 2>&1; then
    echo "The last line does not contain a recognizable date. Append the output of date."
    exit 1
fi

echo "Level 2 completed! Existing information was preserved and the date was appended."
exit 0