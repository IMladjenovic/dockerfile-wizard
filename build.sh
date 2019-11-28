#!/usr/bin/env bash

DOCKER_NAME="terraform-aws"
DOCKER_TAG="0.11.14"
DOCKER_HUB_USERNAME=imladjenovic

docker build -t ${DOCKER_NAME} . && \
docker tag ${DOCKER_NAME} ${DOCKER_HUB_USERNAME}/${DOCKER_NAME}:${DOCKER_TAG} && \
docker tag ${DOCKER_NAME} ${DOCKER_HUB_USERNAME}/${DOCKER_NAME}:latest && \
docker login docker.io \
docker push ${DOCKER_HUB_USERNAME}/${DOCKER_NAME}:${DOCKER_TAG} && \
docker push ${DOCKER_HUB_USERNAME}/${DOCKER_NAME}:latest