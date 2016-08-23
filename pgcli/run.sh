#!/usr/bin/env bash

cd /code

git clone -b "$CODE_BRANCH" https://github.com/dbcli/pgcli.git
cd /code/pgcli
pip install -e .

service postgresql start
sleep 5

echo
echo "All done! Run 'pgcli -U postgres' to try out pgcli."
echo

/usr/bin/env bash
