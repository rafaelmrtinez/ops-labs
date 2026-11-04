#!/bin/bash

FILE="diagnostics.log"

if [ ! -f "$FILE" ]; then
    echo "diagnostics.log was not found."
    exit 1
fi

if ! grep -qF "Diagnostic session started" "$FILE"; then
    echo "The original diagnostic session marker is missing. Existing log content may have been overwritten."
    exit 1
fi

if ! grep -q "passwd" "$FILE"; then
    echo "Successful output from ls -l /etc was not found."
    exit 1
fi

if ! grep -qiE "no such file or directory|cannot access" "$FILE"; then
    echo "Error output from the invalid directory was not found."
    exit 1
fi

echo "Level 5 completed! Both diagnostic results were captured and the original log content was preserved."
exit 0