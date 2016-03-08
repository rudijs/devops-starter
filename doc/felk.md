- `docker-machine ls`

```
NAME   ACTIVE   DRIVER    STATE     URL                         SWARM   DOCKER    ERRORS
app    -        generic   Running   tcp://192.168.33.101:2376           v1.10.2
db     -        generic   Running   tcp://192.168.33.100:2376           v1.10.2
```

- `eval $(docker-machine env db)`
- `docker images`

```
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
kibana              4.3.1               128aba29f6d6        4 weeks ago         259.8 MB
elasticsearch       2.1.1               6f609da577b7        5 weeks ago         345.7 MB
logstash            2.1.1               7efc4ce5231e        5 weeks ago         447.5 MB
```

- `docker ps`

```
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
```

- `docker ps -a`

```
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
```

- `docker-compose -f docker-compose-felk.yml up -d`

```
Creating elasticsearch
Creating logstash
Creating kibana
```

- `docker-compose -f docker-compose-felk.yml down -v`

```
Stopping kibana ... done
Stopping logstash ... done
Stopping elasticsearch ... done
Removing kibana ... done
Removing logstash ... done
Removing elasticsearch ... done
```
