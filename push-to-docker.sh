#!/usr/bin/env bash

IMAGE_NAME=hyperonio/motor-demo
VERSION=2.0-ir-0.1

USER=$1
PASS=$2

docker login -u ${USER} -p {PASS} 
docker buildx build --platform linux/amd64,linux/arm64  -t ${IMAGE_NAME}:${VERSION} --push .
