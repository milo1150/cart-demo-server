#!/bin/sh

docker-compose -f docker-compose.production.yaml build --no-cache --progress=plain
