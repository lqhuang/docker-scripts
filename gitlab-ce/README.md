# Gitlab

Deploy Gitlab-CE via `docker-compose` file.

## Components

Major components to provide services:

- caddy: ACME service for tls certs
- gitlab: main service
- gitlab pages: web services for pages
- pypi registry
- container registry
- plantuml: render for `plantuml` block
- gitlab-runner: CI/CD services

Main features:

- git / webui for git
- pages
- private registry for containers
- private package registry for pypi, npm, maven, etc...
- CI/CD

Entry urls:

- gitlab.example.com
- git.example.com
- \*.pages.example.com
- container.registry.example.com

## Pull up production enviroment

```
docker compose up -d
```

Configure `gitlab-runner` correctly in Gitlab Admin first, then restart `gitlab-runner`

```
docker compose restart gitlab-runner
```

## Configurations

### Data Volume

Don't forget to set shell env `${GITLAB_HOME}` before running `docker compose up -d` to configure your store location which is default to `/opt/gitlab`. Just backup this directory if you want to restore or migrate in the future.

## Deployment

```sh
docker compose up -d
```

### Setup `gitlab-runner`

register `gitlab-runner` first:

```shell
sh ./register-gitlab-runner.sh
```

Check generated config.toml file

Restart `gitlab-runner` container

```shell
docker compose restart gitlab-runner
```

## FAQ

### Get `root` password for first setup

Visit the GitLab URL, and log in with username `root` and the password from the following command:

```shell
sudo docker exec -it gitlab grep 'Password:' /etc/gitlab/initial_root_password
```

**The password file will be automatically deleted in the first reconfigure run after 24 hours.**

## References

1. [GitLab Docker images](https://docs.gitlab.com/ee/install/docker.html)
2. [Administrator documentation](https://docs.gitlab.com/ee/administration)
3. [Run GitLab Runner in a container](https://docs.gitlab.com/runner/install/docker.html)
4. [GitLab Package Registry administration](https://docs.gitlab.com/ee/administration/packages/index.html)
5. [GitLab Container Registry administration](https://docs.gitlab.com/ee/administration/packages/container_registry.html)
6. [Authenticate proxy with nginx](https://docs.docker.com/registry/recipes/nginx/)
7. [PyPI packages in the Package Registry](https://docs.gitlab.com/ee/user/packages/pypi_repository/index.html)
8. [GitLab Pages administration](https://docs.gitlab.com/ee/administration/pages)
9. [GitLab Mattermost](https://docs.gitlab.com/ee/integration/mattermost/)
10. [Load Balancer for multi-node GitLab](https://docs.gitlab.com/ee/administration/load_balancer.html)
11. [Using a non-bundled web-server](https://docs.gitlab.com/omnibus/settings/nginx.html#using-a-non-bundled-web-server)
12. [web-server/caddy](https://gitlab.com/gitlab-org/gitlab-recipes/-/tree/master/web-server/caddy)
13. [Configuring Omnibus GitLab](https://docs.gitlab.com/omnibus/settings/)
14. [Configuration options](https://docs.gitlab.com/omnibus/settings/configuration.html)
15. [omnibus-gitlab/files/gitlab-config-template/gitlab.rb.template](https://gitlab.com/gitlab-org/omnibus-gitlab/blob/master/files/gitlab-config-template/gitlab.rb.template)
