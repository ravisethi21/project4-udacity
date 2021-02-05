#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=ravisethi21/project4-udacity

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username=ravisethi21
docker tag project4-udacity:latest ${dockerpath}:latest

# Step 3:
# Push image to a docker repository
docker push $dockerpath