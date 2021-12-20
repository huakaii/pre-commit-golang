#!/usr/bin/env bash
#
# Capture and print stdout, since gofmt doesn't use proper exit codes
#
set -e -o pipefail

exec 4>&1
output="$(gofmt -l -w "$@" | tee /dev/fd/4)"
[[ -z "$output" ]]
