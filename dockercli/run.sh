#!/usr/bin/env bash

cd /code
git clone -b "$CODE_BRANCH" https://github.com/j-bennet/dockercli.git
cd /code/dockercli

pip install -e .

echo "All done!"

/usr/bin/env bash
