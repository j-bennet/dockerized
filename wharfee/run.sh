#!/usr/bin/env bash

cd /code
git clone -b "$CODE_BRANCH" https://github.com/j-bennet/wharfee.git
cd /code/wharfee

pip install -e .

echo "All done!"

/usr/bin/env bash
