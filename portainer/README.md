# Portainer

Portainer for docker ([document](https://portainer.readthedocs.io/en/latest/deployment.html)).

## Persist Portainer data

    docker run -d -p 9000:9000 --name portainer --restart always -v /var/run/docker.sock:/var/run/docker.sock -v /path/on/host/data:/data portainer/portainer

## Advanced deployment

Advanced Portainer deployment scenarios.

### Declaring the Docker environment to manage upon deployment

You can specify the initial environment you want Portainer to manage via the CLI, use the -H flag and the tcp:// protocol to connect to a remote Docker environment:

    docker run -d -p 9000:9000 --name portainer --restart always -v portainer_data:/data portainer/portainer -H tcp://<REMOTE_HOST>:<REMOTE_PORT>

Ensure you replace `REMOTE_HOST` and `REMOTE_PORT` with the address/port of the Docker server you want to manage.

You can also bind mount the Docker socket to manage a local Docker environment (only possible on environments where the Unix socket is available):

    docker run -d -p 9000:9000 --name portainer --restart always -v /var/run/docker.sock:/var/run/docker.sock -v $HOME/var/lib/portainer/data:/data portainer/portainer -H unix:///var/run/docker.sock
