#!/usr/bin/sh
docker build \
  --build-arg DOCKER_GROUP_ID=`getent group docker | \
  cut -d: -f3` -t my_docker_besides_docker_test .