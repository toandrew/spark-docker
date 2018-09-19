#!/bin/bash

set -e

TAG=hadoop-2.7.7

build() {
    NAME=$1
    IMAGE=toandrew/hadoop-$NAME:$TAG
    cd $([ -z "$2" ] && echo "./$NAME" || echo "$2")
    echo '--------------------------' building $IMAGE in $(pwd)
    docker build -t $IMAGE .
    cd -
}

build base
build namenode
build datanode
build resourcemanager
build nodemanager
