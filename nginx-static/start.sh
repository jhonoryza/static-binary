#!/usr/bin/env bash

if [ -n "$FISH_VERSION" ]; then
    exec bash "$0" "$@"
fi

pid=$(ps -ax| grep nginx | grep master | grep -v grep | head -n 1 | awk '{print $1}')

if [ -n "$pid" ]; then
    echo "nginx already started with pid: $pid"
else
    sudo ./nginx -c nginx.conf -p $PWD
    echo "started nginx"
fi
