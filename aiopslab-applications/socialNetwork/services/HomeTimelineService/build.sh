#!/bin/bash

# Define the Docker image name
DOCKER_IMAGE="your-dockerhub-username/hoteltimelineservice"

# Build the Docker image
docker build -t $DOCKER_IMAGE .

# Push the Docker image to Docker Hub (optional)
docker push $DOCKER_IMAGE
