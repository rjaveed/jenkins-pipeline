#!/bin/bash

echo " *********** "
echo "Pushing Image"
echo " *********** "

IMAGE="jenkins-pipeline-test"


echo "loggin in"

docker login -u rjaveed 

echo "tagging image"

docker tag $IMAGE:$BUILD_TAG rjaveed/$IMAGE:$BUILD_TAG

docker images | grep jenkins

echo "pushing image"

docker push rjaveed/$IMAGE:$BUILD_TAG
