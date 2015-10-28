# Mini eleasticsearch with Consul

This project leverages Consul for an eleasticsearch cluster discovery in AWS.
it is assumed to have [GliderLabs registrator](https://github.com/gliderlabs/registrator)
registering the containers in Consul.

## Volumes
ES Data is stored in a volume located at:  /data  in the container

## Environment vars

|Name               |default              |description      |
|:------------------|:--------------------|:----------------|
|LOG_LEVEL          | info                | elasticsearch log level |
|CONSUL_HOST        | consul              | hostname of consul (used by consul template) |
|CONSUL_PORT        | 8500                | port for consul api (used by consul template)|
|SERVICE_9200_NAME  | search              | service name in consul for ES port 9200 |
|SERVICE_9300_NAME  | search-gossip       | service name in consul for ES port 9300 |
|CLUSTER_NAME       | docker-elasticsearch| ES cluster name|
|ES_HEAP_SIZE       | 512m                | ES Heap size|
