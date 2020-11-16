# Netdata

Real-time performance monitoring

## Run

    docker-compose up -d

access `http://localhost:19999`

## Configure Agent containers

```
docker exec -it netdata bash
cd /etc/netdata
./edit-config netdata.conf
```

## References

1. https://learn.netdata.cloud/docs/agent/packaging/docker/
2. https://github.com/netdata/netdata
3. https://hub.docker.com/r/netdata/netdata
