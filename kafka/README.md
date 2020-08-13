# Kafka Docker

## Run

    export HOST_IP=`ip route get 1 | sed -n 's/^.*src \([0-9.]*\) .*$/\1/p'`
    docker-compose up -d --scale=3

## References:

1. [Docker Hub-Kafka](https://hub.docker.com/r/wurstmeister/kafka)
2. [Github-Kafka](https://github.com/wurstmeister/kafka-docker)
3. [Kafka docker tutorial](http://wurstmeister.github.io/kafka-docker/)
4. [Docker Hub-Zookeeper](https://hub.docker.com/_/zookeeper)
5. [Docker Hub-kafdrop](https://hub.docker.com/r/obsidiandynamics/kafdrop)
6. [Github-kafdrop](https://hub.docker.com/r/obsidiandynamics/kafdrop)
