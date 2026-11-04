#!/usr/bin/env bash

set -eu

echo "Checking Linux shell environment..."

# Verify that the current user can be identified.
if [[ -z "$(whoami)" ]]; then
    echo "Verification failed: unable to identify the current user."
    exit 1
fi

# Verify that HOME is defined and points to an existing directory.
if [[ -z "${HOME:-}" || ! -d "$HOME" ]]; then
    echo "Verification failed: HOME is missing or invalid."
    exit 1
fi

# Verify that the current working directory exists.
if [[ ! -d "$PWD" ]]; then
    echo "Verification failed: current working directory is invalid."
    exit 1
fi

# Verify that Bash is the running shell.
if [[ -z "${BASH_VERSION:-}" ]]; then
    echo "Verification failed: Bash is not running."
    exit 1
fi

echo "Verification passed: Linux shell environment is available."
echo "Current user: $(whoami)"
echo "Home directory: $HOME"
echo "Current directory: $PWD"
echo "Shell: Bash"