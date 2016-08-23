#!/usr/bin/env bash

docker run --rm -it -e CODE_BRANCH=j-bennet/extract-pgspecial \
    pgcli-special
