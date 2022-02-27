FROM public.ecr.aws/sam/build-python3.9:latest

ARG DOCKER_GROUP_ID

ENV DOCKER_HOST unix:///var/run/docker.sock
USER root
RUN yum -y install amazon-linux-extras && PYTHON=python2 /usr/bin/amazon-linux-extras install docker && /usr/sbin/groupadd -g $DOCKER_GROUP_ID docker_host && /usr/sbin/usermod -a -G docker_host root