#!/usr/bin/env bash

if [ "$SKIP_INSTALL" != "Y" ]; then
    easy_install http://github.com/j-bennet/wharfee/tarball/master
fi

echo "All done!"

/usr/bin/env bash
