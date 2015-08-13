#!/usr/bin/env bash

if [ "$SKIP_INSTALL" != "" ]; then
    skip="$SKIP_INSTALL";
else
    skip="N"
fi

docker run --rm -it -e "SKIP_INSTALL=$skip" -v /var/run/docker.sock:/var/run/docker.sock -v $(which docker):/bin/docker wharfee-linux6
