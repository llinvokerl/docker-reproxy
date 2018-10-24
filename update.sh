#!/bin/bash
# start or update with all the docker-compose.yml files
DIR=$(cd "$(dirname "$1")"; pwd)
cd $DIR/nginx_proxy && docker-compose up -d
cd $DIR/lemp && docker-compose up -d
cd $DIR/wordpress && docker-compose up -d
