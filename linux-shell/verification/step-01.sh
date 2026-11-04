#!/usr/bin/env bash

set -euo pipefail

printf '%s\n' "Running Step 01 verification..."

# Check that the required commands are available.
for command_name in whoami pwd ps; do
    if ! command -v "$command_name" >/dev/null 2>&1; then
        printf 'FAIL: Required command "%s" is unavailable.\n' "$command_name"
        exit 1
    fi
done

# Check that the current user can be identified.
current_user="$(whoami)"

if [[ -z "$current_user" ]]; then
    printf '%s\n' "FAIL: Unable to identify the current user."
    exit 1
fi

# Check that the current working directory exists.
current_directory="$(pwd)"

if [[ ! -d "$current_directory" ]]; then
    printf '%s\n' "FAIL: The current working directory is invalid."
    exit 1
fi

# Check that HOME is defined and points to an existing directory.
if [[ -z "${HOME:-}" ]]; then
    printf '%s\n' "FAIL: The HOME environment variable is not defined."
    exit 1
fi

if [[ ! -d "$HOME" ]]; then
    printf '%s\n' "FAIL: The home directory does not exist."
    exit 1
fi

# Check that SHELL is defined.
if [[ -z "${SHELL:-}" ]]; then
    printf '%s\n' "FAIL: The SHELL environment variable is not defined."
    exit 1
fi

printf '%s\n' "PASS: Current user can be identified."
printf '%s\n' "PASS: Current working directory is valid."
printf '%s\n' "PASS: Home directory exists."
printf '%s\n' "PASS: Configured login shell is available."

printf '\n%s\n' "Step 01 environment verification completed successfully."