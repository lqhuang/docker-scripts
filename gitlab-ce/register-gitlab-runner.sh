#!/bin/sh

GITLAB_HOME=/opt/gitlab
GITLAB_TOKEN="gitlab-runners-reg-token"

docker run \
    --rm -it \
    -v "${GITLAB_HOME}/runner-config:/etc/gitlab-runner" \
    gitlab/gitlab-runner:alpine3.14-v14.7.0 \
    register \
    -r ${GITLAB_TOKEN} \
    --name "$1" \
    --run-untagged \
    --executor "docker" \
    --cache-shared \
