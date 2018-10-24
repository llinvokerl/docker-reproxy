#!/bin/bash
# stop the whole service
DIR=$(cd "$(dirname "$1")"; pwd)
cd $DIR/nginx_proxy && docker-compose stop
cd $DIR/lemp && docker-compose stop
cd $DIR/wordpress && docker-compose stop
