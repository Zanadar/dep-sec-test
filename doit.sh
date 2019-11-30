#! /bin/bash

BP=$1
DEP=$2

cat ~/workspace/${BP}/manifest.yml | yj | jq -r --arg DEP $DEP '.dependencies[] | select(.name == $DEP) | .version' \
 | xargs -L 1 -I _ mkdir -p "$DEP/_"
