#!/bin/sh

# check tutorial: https://docs.docker.com/compose/cli-command/#installing-compose-v2
COMPOSE_VERSION=v2.2.2
# DIR_CLI_PLUGINS=/usr/local/lib/docker/cli-plugins
DIR_CLI_PLUGINS=~/.docker/cli-plugins

mkdir -p ${DIR_CLI_PLUGINS}
curl -SL https://github.com/docker/compose/releases/download/${COMPOSE_VERSION}/docker-compose-linux-x86_64 -o ${DIR_CLI_PLUGINS}/docker-compose
chmod +x ${DIR_CLI_PLUGINS}/docker-compose
