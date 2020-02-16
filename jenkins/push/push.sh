#!/bin/bash

echo " *********** "
echo "Pushing Image"
echo " *********** "

IMAGE="maven-project"


echo "loggin in"

docker login -u rjaveed 

echo "tagging image"

docker tag $IMAGE:$BUILD_TAG rjaveed/$IMAGE:$BUILD_TAG

echo "pushing image"

docker push rjaveed/$IMAGE:$BUILD_TAG
