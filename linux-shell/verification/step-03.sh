#!/usr/bin/env bash

set -eu

echo "Checking filesystem navigation prerequisites..."

if [[ ! -d "/" ]]; then
    echo "Verification failed: root directory is unavailable."
    exit 1
fi

if [[ ! -d "/tmp" ]]; then
    echo "Verification failed: /tmp directory is unavailable."
    exit 1
fi

if [[ ! -d "${HOME}/shell-practice" ]]; then
    echo "Verification failed: shell-practice from Step 02 was not found."
    echo "Expected location: ${HOME}/shell-practice"
    exit 1
fi

echo "Verification passed: required filesystem locations are available."
echo "Step 03 completed successfully."