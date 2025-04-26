#!/bin/bash
# Stop and remove old Docker containers
docker ps -q --filter "ancestor=naveen710/simple-python-flask-app" | grep -q . && docker stop $(docker ps -q --filter "ancestor=naveen710/simple-python-flask-app")
docker rm -f $(docker ps -a -q)

# Optional: Clean app folder
rm -rf /home/ubuntu/app/*
