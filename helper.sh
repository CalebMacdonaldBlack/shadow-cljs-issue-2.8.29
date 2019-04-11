#!/usr/bin/env bash

set -euo pipefail

start_in_docker () {
    docker build -t someapp .
    docker run -p 3449:3449 -p 3448:3448 -p 9630:9630 -it someapp
}

eval $@
