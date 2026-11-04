#!/usr/bin/env bash

set -eu

echo "Checking command classifications..."

if [[ -z "${BASH_VERSION:-}" ]]; then
    echo "Verification failed: this verification requires Bash."
    exit 1
fi

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
check_command_type mkdir file
check_command_type uptime file

echo "Verification passed: all expected command classifications are correct."
echo "Step 05 completed successfully."