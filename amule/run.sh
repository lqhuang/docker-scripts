#!/bin/sh

PASSWORD=

docker run --detach --rm \
    -p 4711:4711 \
    -p 4662:4662 \
    -p 4672:4672/udp \
    -e PUID=$(id -u) -e PGID=$(id -g) \
    -e WEBUI_PWD=${PASSWORD} \
    -e WEBUI_TEMPLATE=AmuleWebUI-Reloaded \
    -v ${PWD}/amule/conf:/home/amule/.aMule \
    -v ${PWD}/amule/incoming:/incoming \
    -v ${PWD}/amule/tmp:/temp \
    tchabaud/amule
