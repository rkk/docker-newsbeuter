#!/bin/bash
#
# Builds Docker container.
#

docker \
    build \
   --tag=newsbeuter \
   --no-cache \
   --file Dockerfile \
   .
