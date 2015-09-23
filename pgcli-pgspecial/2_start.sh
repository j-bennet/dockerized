#!/usr/bin/env bash

docker run --rm -it -e CODE_BRANCH=j-bennet/extract-pgspecial \
    -v /var/run/docker.sock:/run/docker.sock \
    -v $(which docker):/bin/docker \
    pgcli-special
