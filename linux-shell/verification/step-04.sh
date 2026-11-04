#!/usr/bin/env bash

set -eu

HISTORY_FILE="${HOME}/.bash_history"

echo "Checking Step 04 command execution..."

if [[ ! -f "$HISTORY_FILE" ]]; then
    echo "Verification failed: Bash history file not found."
    echo "Run 'history -a' in your interactive terminal and try again."
    exit 1
fi

check_history() {
    local pattern="$1"
    local description="$2"

    if ! grep -Eq "$pattern" "$HISTORY_FILE"; then
        echo "Verification failed: missing command: $description"
        exit 1
    fi

    echo "Passed: $description"
}

check_history '^[[:space:]]*echo[[:space:]]+"Hello, Engineers!"[[:space:]]*$' 'echo "Hello, Engineers!"'
check_history '^[[:space:]]*echo[[:space:]]+"We are learning Linux commands\."[[:space:]]*$' 'echo "We are learning Linux commands."'
check_history '^[[:space:]]*echo[[:space:]]+Linux[[:space:]]+Shell[[:space:]]+Practice[[:space:]]*$' 'echo Linux Shell Practice'
check_history '^[[:space:]]*uptime[[:space:]]*$' 'uptime'
check_history '^[[:space:]]*uptime[[:space:]]+-p[[:space:]]*$' 'uptime -p'

echo "Verification passed: all required commands were found in Bash history."
echo "Step 04 completed successfully."