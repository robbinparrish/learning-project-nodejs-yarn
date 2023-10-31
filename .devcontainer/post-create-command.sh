#!/bin/bash
#
# Post Create Command for devcontainer.
# We can put multiple configs here that will be exectuted
# once container is created.
#

# Fail on error.
set -e

# Run yarn install ( default - yarn install --immutable )
yarn_rc=""
for I in $(seq 1 5) ; do
    yarn install --immutable
    yarn_rc=""
    if [ "${yarn_rc}" != "0" ] ; then
	continue
    else
	break
    fi
done
