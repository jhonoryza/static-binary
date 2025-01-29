#!/usr/bin/env bash

if [ -n "$FISH_VERSION" ]; then
    exec bash "$0" "$@"
fi

pid=$(ps -ax| grep php-fpm | grep master | grep -v grep | head -n 1 | awk '{print $1}')

if [ -n "$pid" ]; then
    echo "php-fpm already started with pid: $pid"
else
    sudo ./php82 -R -y php-fpm.conf
    echo "started php-fpm"
fi
