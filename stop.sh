#!/bin/bash

# Stop all running Docker containers
docker stop $(docker ps -aq)

# Remove all Docker containers
docker rm $(docker ps -aq)