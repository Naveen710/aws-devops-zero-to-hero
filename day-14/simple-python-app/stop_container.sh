#!/bin/bash
set -e

# Get the top (first) running container ID
containerId=$(docker ps -q | head -n 1)

# Check if a container was found
if [ -n "$containerId" ]; then
  echo "Stopping and removing container ID: $containerId"
  docker rm -f "$containerId"
else
  echo "No running containers to stop."
fi
