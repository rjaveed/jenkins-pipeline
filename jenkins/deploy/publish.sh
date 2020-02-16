#!/bin/bash
export IMAGE=$(sed -n ‘1p’ /tmp/.auth)
export IMAGE=$(sed -n '1p' /tmp/.auth)
export TAG = $(sed -n ‘2p’ /tmp/.auth)

docker login -u rjaveed -p $PASSWORD
cd /root/maven && docker-compose up -d
