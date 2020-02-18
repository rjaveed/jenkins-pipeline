#!/bin/bash

echo jenkins-pipeline-test > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASSWORD >> /tmp/.auth

scp -i /opt/prod /tmp/.auth prod-user@13.235.9.77:/tmp/.auth
scp -i /opt/prod ./jenkins/deploy/publish.sh prod-user@13.235.9.77:/tmp/publish.sh
ssh -i ~/rjay-prod.pem ubuntu@13.235.9.77 "sudo /root/maven/publish.sh"
