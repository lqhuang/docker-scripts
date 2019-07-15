#!/bin/sh

docker run -d \
    --restart always \
    --name sslocal \
    --hostname sslocal \
    -v ${PWD}/config.json:/etc/shadowsocks-libev/config.json \
    -v /dev/urandom:/dev/random \
    sgrio/alpine-sslocalproxy

    # -p 8118:8118 \
    # -p 1080:1080 \
