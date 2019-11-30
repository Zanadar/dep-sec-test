#! /bin/bash

BP=$1
DEP=$2

versions=$(cat ~/workspace/${BP}/manifest.yml | yj | jq -r --arg DEP $DEP '.dependencies[] | select(.name == $DEP) | .version')
echo $versions
