#!/usr/bin/env bash

set -eu

TARGET_DIR="${HOME}/shell-practice"

echo "Checking the shell-practice directory..."

if [[ ! -d "$TARGET_DIR" ]]; then
    echo "Verification failed: shell-practice was not found in your home directory."
    echo "Expected location: $TARGET_DIR"
    exit 1
fi

if [[ ! -O "$TARGET_DIR" ]]; then
    echo "Verification failed: the directory is not owned by the current user."
    exit 1
fi

echo "Verification passed: shell-practice exists in your home directory."
echo "Step 02 completed successfully."