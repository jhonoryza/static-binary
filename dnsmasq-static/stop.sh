#!/usr/bin/env bash

if [ -n "$FISH_VERSION" ]; then
    exec bash "$0" "$@"
fi

pid=$(ps -ax| grep dnsmasq | grep -v grep | head -n 1 | awk '{print $1}')

if [ -n "$pid" ]; then
    echo "stopping dnsmasq process with pid: $pid"
    sudo kill -QUIT $pid
else
    echo "no dnsmasq process found"
fi


