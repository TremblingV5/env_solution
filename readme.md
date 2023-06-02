# Environment Solution

> This project is built to provide a rapid start development environment. It is worth noticing that this project depends on Docker and docker-compose.

[TOC]

## Quick Start

1. Run `git clone` in the directory of your project or any directory you like, and use `cd` enter the `./env_solution`
2. Ensure that there's directory named by your need, such as `mysql` and `redis`
3. Use script `start.sh` and `stop.sh` to start or stop those environment

   ```sh
   ./start.sh mysql redis
   ./stop.sh mysql redis
   ```

4. It's worth noticing that everyone must write `a` before `b` if `b` is depend on `a`. For example, run a `kafka` always after run a `zookeeper`，you must use `./start.sh zookeeper kafka` and **not** ~~`./start.sh kafka zookeeper`~~. To sum up in a word, **the order of services in command must consider the dependencies between services**

## Start a specific environment

1. Enter a directory which you hope to run
2. Ensure that there's a `docker-compose.yml` in this directory
3. Use command to run it

   ```sh
   docker-compose up -d
   ```

## Supported

- Cassandra
- etcd
- Flink
- HBase
- Kafka
- MinIO
- MongoDB
- MySQL
- Nacos
- OneDev
- PostgreSQL
- Redis
- Spark
- Zookeeper

## Planning

- [x] Cassandra
- [ ] ClickHouse
- [ ] Elasticsearch
- [ ] Hadoop
- [x] HBase
- [ ] HDFS
- [ ] Hive
- [ ] MapReduce
- [x] PostgreSQL
- [ ] Presto
- [ ] RabbitMQ
- [ ] Solr
- [ ] Spark
- [ ] Sqoop
- [ ] Flume
