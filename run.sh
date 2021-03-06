#!/bin/sh

mkdir -p drupal

# remove old containers and start new ones.
docker-compose stop
echo "y" |docker-compose rm
docker-compose up -d

./build.sh
./install.sh
