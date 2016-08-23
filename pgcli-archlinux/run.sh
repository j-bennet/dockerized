#!/usr/bin/env bash

cd /code

git clone -b "$CODE_BRANCH" https://github.com/dbcli/pgcli.git
cd /code/pgcli
pip install -e .

echo "Starting postgresql..."
su -c 'pg_ctl -D /var/lib/postgres/data start' postgres
sleep 5
echo "Started."

echo
echo "All done! Run 'pgcli -U postgres' to try out pgcli."
echo

/usr/bin/env bash
