#!/usr/bin/env bash

set -eu

HISTORY_FILE="${HOME}/.bash_history"
TARGET_DIR="${HOME}/shell-practice"

echo "Checking Step 02 command execution..."

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

check_history '^[[:space:]]*cd[[:space:]]+~[[:space:]]*$' "cd ~"
check_history '^[[:space:]]*mkdir[[:space:]]+-p[[:space:]]+shell-practice[[:space:]]*$' "mkdir -p shell-practice"
check_history '^[[:space:]]*cd[[:space:]]+~/shell-practice[[:space:]]*$' "cd ~/shell-practice"
check_history '^[[:space:]]*pwd[[:space:]]*$' "pwd"
check_history '^[[:space:]]*ls[[:space:]]+-la[[:space:]]*$' "ls -la"

echo "Checking directory state..."

if [[ ! -d "$TARGET_DIR" ]]; then
    echo "Verification failed: shell-practice directory does not exist."
    exit 1
fi

if [[ ! -O "$TARGET_DIR" ]]; then
    echo "Verification failed: shell-practice is not owned by the current user."
    exit 1
fi

echo "Verification passed: all required commands were found."
echo "Step 02 completed successfully."