#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

if samscan "$SCRIPT_DIR/test2.yaml" &> /dev/null; then
    echo "Expected to fail but didn't"
    exit 1
fi

echo "Pass"
