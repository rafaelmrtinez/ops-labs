#!/bin/bash

FILE="disk-usage.txt"

if [ ! -f "$FILE" ]; then
    echo "disk-usage.txt was not found. Redirect the output of df -h into this file."
    exit 1
fi

if [ ! -s "$FILE" ]; then
    echo "disk-usage.txt is empty. Make sure the command output was saved."
    exit 1
fi

if ! grep -q "Filesystem" "$FILE"; then
    echo "The file does not appear to contain df -h output."
    exit 1
fi

echo "Level 1 completed! Disk usage information was successfully saved."
exit 0