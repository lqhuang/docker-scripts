#!/bin/sh

docker rm -f portainer

# local service
docker run --detach \
    --name portainer \
    --hostname portainer \
    --restart always \
    -p 9000:9000 \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v portainer_data:/data \
    portainer/portainer:1.20.2 \

# docker: Conflicting options: --restart and --rm
