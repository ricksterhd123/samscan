#!/bin/bash

set -e

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

echo "Test 1"
bash $SCRIPT_DIR/test1.sh

echo "Test 2"
bash $SCRIPT_DIR/test2.sh
