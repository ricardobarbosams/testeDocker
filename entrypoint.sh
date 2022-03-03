#!/usr/bin/env sh
set -e

php-fpm7.4 -D
nginx -g 'daemon off;'

