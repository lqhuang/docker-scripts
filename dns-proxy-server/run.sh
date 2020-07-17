#!/bin/sh

docker run --rm \
    --name dns.mageddo \
    --hostname dns.mageddo \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v /etc/resolv.conf:/etc/resolv.conf \
    defreitas/dns-proxy-server:2.10.4
