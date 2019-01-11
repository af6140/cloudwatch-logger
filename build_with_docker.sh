#!/bin/bash
#IMAGE=centos/go-toolset-7-centos7
IMAGE=golang:1.10.7
CONTAINER_GOPATH=/go
docker run -it --rm \
  -e HOST_UID=`id -u` \
  -e HOST_GID=`id -g` \
  -v ${PWD}:/go/src/cloudwatch-logger \
  --workdir /go/src/cloudwatch-logger \
  $IMAGE  bash -c 'apt-get update && apt-get install golang-glide && glide update && go build -o cwlogger main.go && chown -R  ${HOST_UID}:${HOST_GID} vendor glide.lock cwlogger'
