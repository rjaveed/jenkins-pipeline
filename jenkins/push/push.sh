#!/bin/bash

echo " *********** "
echo "Pushing Image"
echo " *********** "

IMAGE="app"
NEWIMAGE="jenkins-pipeline-test"


echo "loggin in"

docker login -u rjaveed 

echo "tagging image"

docker tag $IMAGE:$BUILD_TAG rjaveed/$NEWIMAGE:$BUILD_TAG

docker images | grep jenkins

echo "pushing image"

docker push rjaveed/$NEWIMAGE:$BUILD_TAG
