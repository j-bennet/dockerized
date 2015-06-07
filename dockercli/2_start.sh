#!/usr/bin/env bash

docker run --rm -it -e CODE_BRANCH=run-with-tty -v /var/run/docker.sock:/run/docker.sock -v $(which docker):/bin/docker dcli
