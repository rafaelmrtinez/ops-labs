#!/usr/bin/env bash

set -eu

HISTORY_FILE="${HOME}/.bash_history"

echo "Checking Step 05 command execution..."

if [[ ! -f "$HISTORY_FILE" ]]; then
    echo "Verification failed: Bash history file not found."
    echo "Run 'history -a' in your interactive terminal and try again."
    exit 1
fi

if [[ -z "${BASH_VERSION:-}" ]]; then
    echo "Verification failed: this verification requires Bash."
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

check_history '^[[:space:]]*type[[:space:]]+cd[[:space:]]*$' "type cd"
check_history '^[[:space:]]*type[[:space:]]+echo[[:space:]]*$' "type echo"
check_history '^[[:space:]]*type[[:space:]]+ls[[:space:]]*$' "type ls"
check_history '^[[:space:]]*type[[:space:]]+date[[:space:]]*$' "type date"

check_history '^[[:space:]]*type[[:space:]]+-t[[:space:]]+cd[[:space:]]*$' "type -t cd"
check_history '^[[:space:]]*type[[:space:]]+-t[[:space:]]+echo[[:space:]]*$' "type -t echo"
check_history '^[[:space:]]*type[[:space:]]+-t[[:space:]]+ls[[:space:]]*$' "type -t ls"

echo "Checking command classifications..."

check_command_type() {
    local command_name="$1"
    local expected_type="$2"
    local actual_type

    actual_type="$(type -t "$command_name" 2>/dev/null || true)"

    if [[ "$actual_type" != "$expected_type" ]]; then
        echo "Verification failed: expected '$command_name' to be '$expected_type', got '${actual_type:-not found}'."
        exit 1
    fi

    echo "Passed: $command_name is classified as $expected_type."
}

check_command_type cd builtin
check_command_type echo builtin
check_command_type ls file
check_command_type date file

echo "Verification passed: required commands were found and classifications are correct."
echo "Step 05 completed successfully."