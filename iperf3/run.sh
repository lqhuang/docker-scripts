#!/bin/sh

docker run --name=iperf3 -d --rm -p 5201:5201/tcp -p 5201:5201/udp mlabbe/iperf3:3.9-r1
