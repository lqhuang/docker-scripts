# Shadowsocks-libev Docker Image

See [Shadowsocks-libev Docker Image](https://github.com/shadowsocks/shadowsocks-libev/tree/master/docker/alpine) for more and latest information.

## Customize environment variables

- `PASSWORD`: password what you wanted
- `SERVER_ADDR`: the IP/domain to bind to, defaults to `0.0.0.0`
- `SERVER_ADDR_IPV6`: the IPv6 address to bind to, defaults to `::0`
- `METHOD`: encryption method to use, defaults to `aes-256-gcm`
- `TIMEOUT`: defaults to 300
- `DNS_ADDRS`: DNS servers to redirect NS lookup requests to, defaults to `8.8.8.8,8.8.4.4`
- `ARGS`: Additional arguments supported by `ss-server` can be passed with the environment variable ARGS, for instance to start in verbose mode: `ARGS=-v`

## Quick deployment

It is very handy to use docker-compose to manage docker containers. And setup a directory tree to make things easy to manage is highly recommended.

    mkdir -p ~/docker-scripts/shadowsocks-libev && cd ~/docker-scripts/shadowsocks-libev
    curl -sSLO https://github.com/shadowsocks/shadowsocks-libev/raw/master/docker/alpine/docker-compose.yml
    docker-compose up -d
    docker-compose ps

## References

1. [Docker Hub](https://hub.docker.com/r/shadowsocks/shadowsocks-libev)
2. [Github](https://github.com/shadowsocks/shadowsocks-libev/tree/master/docker/alpine)
