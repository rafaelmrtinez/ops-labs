#!/bin/bash

FILE="errors.log"

if [ ! -f "$FILE" ]; then
    echo "errors.log was not found. Redirect STDERR into this file."
    exit 1
fi

if [ ! -s "$FILE" ]; then
    echo "errors.log is empty. Make sure the invalid directory produces an error."
    exit 1
fi

if ! grep -qiE "no such file or directory|cannot access" "$FILE"; then
    echo "Expected directory error was not found in errors.log."
    exit 1
fi

echo "Level 3 completed! Error messages were successfully captured."
exit 0