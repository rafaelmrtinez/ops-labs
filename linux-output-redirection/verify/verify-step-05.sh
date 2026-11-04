#!/bin/bash

FILE="system-report.log"

if [ ! -f "$FILE" ]; then
    echo "system-report.log was not found."
    exit 1
fi

if [ ! -s "$FILE" ]; then
    echo "system-report.log is empty."
    exit 1
fi

if ! grep -q "passwd" "$FILE"; then
    echo "Normal command output from /etc was not found."
    exit 1
fi

if ! grep -qiE "no such file or directory|cannot access" "$FILE"; then
    echo "Error output was not found. Make sure STDERR is redirected."
    exit 1
fi

echo "Level 4 completed! Both STDOUT and STDERR were captured."
exit 0