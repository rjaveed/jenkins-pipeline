#!/bin/bash
echo "*********************"
echo "testing Jar"
echo "*********************"

docker run --rm -v $PWD/java-app:/app -w /app maven:3-alpine "$@"

