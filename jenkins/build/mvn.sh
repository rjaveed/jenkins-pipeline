#!/bin/bash
echo "*********************"
echo "testing Jar"
echo "*********************"

WORKSPACE =/Users/rjaveed/docker-files/images/jenkins/jenkins_data/jenkins_home/workspace/pipeline-maven-docker
docker run --rm -v $WORKSPACE/java-app:/app -w /app maven:3-alpine "$@"

