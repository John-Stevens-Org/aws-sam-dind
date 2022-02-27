#!/usr/bin/sh
docker run -it -v /var/run/docker.sock:/var/run/docker.sock --rm --entrypoint /bin/sh my_docker_besides_docker_test:latest