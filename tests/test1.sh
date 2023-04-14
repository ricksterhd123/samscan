#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

echo $SCRIPT_DIR

resources=($(samscan "$SCRIPT_DIR/test1.yaml"))
expected=("\"AWS::Serverless::Function\"" "\"AWS::S3::Bucket\"")
len=${#expected[@]}

for ((i = 0; i < $len ; i++)); do
    j=$((i+1))
    if [ "${resources[$i]}" != "${expected[$i]}" ]; then
        echo "Fail: Resource #${j} expected to be ${expected[$i]}"
        exit 1
    fi
done

echo "Pass"
