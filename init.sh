#!/bin/bash

# start docker
dockerd

# make PWD for keys and data
cd $GITPOD_REPO_ROOT
mkdir celestia-pwd

# set permissions
sudo chown 10001:10001 ./celestia-pwd

# start devnet
docker run --platform linux/amd64 -p 26657:26657 -p 26659:26659 -p 26658:26658 ghcr.io/rollkit/local-celestia-devnet:v0.11.0-rc8
