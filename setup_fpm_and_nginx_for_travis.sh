#!/bin/bash

DIR=$(dirname "$0")
NGINX_CONF="/etc/nginx/nginx.conf"

apt-get install -y nginx realpath

cp .travis_nginx.conf $NGINX_CONF

APPROOT=$(realpath $DIR)

sed -i "s|@APPROOT@|$APPROOT|g" $NGINX_CONF

/etc/init.d/nginx restart
