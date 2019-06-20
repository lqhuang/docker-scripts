# gitea

## Spec

Here are componments to provide service:

- gitea
- sqlite
- canddy

## Depolyment

Change your `git.example.com` in `Caddyfile`.

Put your personal secrets to `docker-compose.yml` or `.env` file

    - SECRET_KEY=
    - ROOT_URL=
    - DB_NAME=
    - DB_USER=
    - DB_PASSWD=

run

    docker-compose up -d

### Create First User from CLI

There is no default password during the install process you would be prompted to create a user, otherwise the first user registered to Gitea becomes the admin.

But if you have set `DISABLE_REGISTRATION=true` from docker environment and made database well configured, you won't see install process and can't create any user to login.

In this situation, you need to create your admin user from command line

    # gitea < 1.9.0
    docker exec -it gitea gitea admin create-user --name yourname --password secrect-password --email mail@example.com --admin
    # gitea >= 1.9.0
    docker exec -it gitea gitea admin create-user --username yourname --password secrect-password --email mail@example.com --admin

Hint: In `docker-compose`, there is still no `post-run`/`postUp`/`onrun` feature to execute custom action after container is ready. I think that would be a much better way to initialize.

## Docs

1. Server - [gitea](https://hub.docker.com/r/gitea/gitea)
2. Reverse Proxy - [caddy](https://hub.docker.com/r/abiosoft/caddy)
3. Gitea - [Installation with Docker](https://docs.gitea.io/en-us/install-with-docker)
4. Gitea - [Configuration Cheat Sheet](https://docs.gitea.io/en-us/config-cheat-sheet)
5. Gitea - [Not seeing a clone URL or the clone URL being incorrect](https://docs.gitea.io/en-us/faq#not-seeing-a-clone-url-or-the-clone-url-being-incorrect)
6. Gitea - [Command Line](https://docs.gitea.io/en-us/command-line)
