#!/usr/bin/env bash

set -eu

echo "Checking availability of required commands..."

if ! command -v uptime >/dev/null 2>&1; then
    echo "Verification failed: uptime command is unavailable."
    exit 1
fi

if ! uptime -p >/dev/null 2>&1; then
    echo "Verification failed: uptime -p is not supported."
    exit 1
fi

if ! command -v echo >/dev/null 2>&1; then
    echo "Verification failed: echo command is unavailable."
    exit 1
fi

echo "Verification passed: required commands and options are available."
echo "Step 04 completed successfully."