#!/usr/bin/env bash

docker run --rm -it -v /var/run/docker.sock:/var/run/docker.sock -v $(which docker):/bin/docker wharfee-linux6
