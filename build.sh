#!/bin/bash

CHANNEL="release"

while [[ $# -gt 0 ]]; do
  case $1 in
    --channel=*)
      CHANNEL="${1#*=}"
      shift
      ;;
    *)
      echo "Unknown option $1"
      exit 1
      ;;
  esac
done

docker build -f ubuntu-22.04/Dockerfile --build-arg CHANNEL=$CHANNEL -t ubuntu22.04:testing .
docker build -f centos8/Dockerfile --build-arg CHANNEL=$CHANNEL -t centos8:testing .
