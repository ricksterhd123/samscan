#!/bin/bash
set -e

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

if ! command -v python3 &> /dev/null
then
    echo "Command python3 could not be found"
    exit
fi

if ! command -v jq &> /dev/null
then
    echo "Command jq could not be found"
    exit
fi

python3 -m venv $SCRIPT_DIR/venv
source $SCRIPT_DIR/venv/bin/activate
pip install yq
chmod +x samscan
mkdir -p ~/.bin/samscan
cp $SCRIPT_DIR/samscan ~/.bin/samscan/
cp -r $SCRIPT_DIR/venv ~/.bin/samscan/
echo "Setup finished. You need to add to the command to PATH, typing 'export PATH=\$PATH":\$HOME/.bin/samscan"'"

