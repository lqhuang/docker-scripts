#!/bin/bash

docker rm -f ss-server

docker run --detach \
    --name ss-server \
    --hostname ss-server \
    --restart always \
    -p 8388:8388 \
    -p 8388:8388/udp \
    -e PASSWORD=hello,world \
    -e METHOD=chacha20-ietf-poly1305 \
    -e ARGS=--fast-open \
    shadowsocks/shadowsocks-libev:v3.2.5

# Note: It's the hostname in the container that is used as the password, not that of the host.

# ref: https://github.com/shadowsocks/shadowsocks-libev/tree/master/docker/alpine
