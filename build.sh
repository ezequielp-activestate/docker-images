#/bin/bash

docker build -f ubuntu-22.04/Dockerfile -t ubuntu22.04-testing .
docker build -f centos8/Dockerfile -t centos8-testing .
