#!/usr/bin/env bash

docker run --rm -it -e CODE_BRANCH=master -v /var/run/docker.sock:/run/docker.sock -v $(which docker):/bin/docker dcli
