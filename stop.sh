#!/bin/bash

# Stop all running Docker containers
docker stop $(docker ps -aq)