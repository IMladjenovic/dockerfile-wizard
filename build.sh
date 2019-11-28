#!/usr/bin/env bash

IMAGE_NAME="terraform-aws"
TAG="0.11.14"
DOCKER_USERNAME=imladjenovic

docker build -t ${DOCKER_USERNAME}/${IMAGE_NAME}:${TAG} . && \
docker build -t ${DOCKER_USERNAME}/${IMAGE_NAME}:latest . && \
docker push ${DOCKER_USERNAME}/${IMAGE_NAME}:${TAG} && \
docker push ${DOCKER_USERNAME}/${IMAGE_NAME}:latest