#!/bin/bash

URLS="$(cat ./urls)"

echo "start"
echo "------------------"
for i in $URLS
do
    lighthouse $i --only-categories=accessibility --preset=desktop  --form-factor=desktop
done
