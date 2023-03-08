# Environment Solution

> Most coder must have encountered things which it's difficult to quickly build a development environment. This project is built to provide a rapid start development environment. It is worth noticing that this project depends on Docker and docker-compose.

[TOC]

## Quick Start

1. Ensue that there're directory named by your need, such as `mysql` and `redis`
2. Use script `start.sh` and `stop.sh` to start or stop those environment

   ```sh
   ./start.sh mysql redis
   ./stop.sh mysql redis
   ```

## Start a specific environment

1. Enter a directory which you hope to run
2. Ensure that there's a `docker-compose.yml` in this directory
3. Use command to run it

   ```sh
   docker-compose up -d
   ```
