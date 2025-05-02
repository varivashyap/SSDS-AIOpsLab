#!/bin/bash

# Set the Docker image name (Replace with your Docker Hub username)
DOCKER_IMAGE="your-dockerhub-username/textservice"

# Create OpenWhisk action with Docker
wsk action create textservice --docker $DOCKER_IMAGE --memory 512 --timeout 600000

# (Optional) Invoke the action
# wsk action invoke textservice --blocking --result --param input_data "test input"
