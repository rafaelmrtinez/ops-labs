#!/usr/bin/env bash

set -eu

HISTORY_FILE="${HOME}/.bash_history"
TARGET_DIR="${HOME}/shell-practice"

echo "Checking Step 03 command execution..."

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

check_history '^[[:space:]]*pwd[[:space:]]*$' "pwd"
check_history '^[[:space:]]*cd[[:space:]]+/[[:space:]]*$' "cd /"
check_history '^[[:space:]]*ls[[:space:]]*$' "ls"
check_history '^[[:space:]]*cd[[:space:]]+~/shell-practice[[:space:]]*$' "cd ~/shell-practice"
check_history '^[[:space:]]*cd[[:space:]]+\.\.[[:space:]]*$' "cd .."
check_history '^[[:space:]]*cd[[:space:]]+shell-practice[[:space:]]*$' "cd shell-practice"
check_history '^[[:space:]]*cd[[:space:]]+-[[:space:]]*$' "cd -"

echo "Checking filesystem locations..."

if [[ ! -d "/" ]]; then
    echo "Verification failed: root directory is unavailable."
    exit 1
fi

if [[ ! -d "/tmp" ]]; then
    echo "Verification failed: /tmp directory is unavailable."
    exit 1
fi

if [[ ! -d "$TARGET_DIR" ]]; then
    echo "Verification failed: shell-practice from Step 02 was not found."
    exit 1
fi

echo "Verification passed: required commands were found and filesystem locations are available."
echo "Step 03 completed successfully."