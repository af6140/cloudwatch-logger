#!/bin/bash
IMAGE=centos/go-toolset-7-centos7
IMAGE=golang:1.10.7
CONTAINER_GOPATH=/go
docker run -it --rm \
  --user `id -u`:0 \
  -v ${PWD}:/${CONTAINER_GOPATH}/src/cwlogger \
  --workdir /${CONTAINER_GOPATH}/src/cwlogger \
  $IMAGE bash
