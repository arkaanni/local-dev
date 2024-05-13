#!/bin/bash
docker build . -t  $containerRegistry/jenkins-graalvm:latest
docker push $containerRegistry/jenkins-graalvm:latest
docker rmi $containerRegistry/jenkins-graalvm:latest