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

mkdir -p ~/.bin/samscan
cp $SCRIPT_DIR/samscan ~/.bin/samscan
cd ~/.bin/samscan
python3 -m venv venv
source venv/bin/activate
pip install yq
echo "================================================"
echo "Setup finished"
echo "================================================"
echo "To install: 'echo \"export PATH=\\\$PATH:\\\$HOME/.bin/samscan\" >> ~/.bash_profile' or"
echo "'echo \"export PATH=\\\$PATH:\\\$HOME/.bin/samscan\" >> ~/.bashrc' if you're running on WSL"
echo "================================================"
exit
