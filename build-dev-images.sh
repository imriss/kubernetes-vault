#!/bin/sh

VERSION=dev

# Build the binaries
# docker run --rm -v "$PWD":/go/src/github.com/imriss/kubernetes-vault -w /go/src/github.com/imriss/kubernetes-vault golang:1.11.5-alpine ./build.sh
docker run --rm -v "$PWD":/source/kubernetes-vault -w /source/kubernetes-vault golang:1.11-alpine ./build.sh

# Build the images
# docker build -t imriss/kubernetes-vault:"$VERSION" -f cmd/controller/Dockerfile.dev cmd/controller/
# docker build -t imriss/kubernetes-vault-init:"$VERSION" -f cmd/init/Dockerfile.dev cmd/init/
# docker build -t imriss/kubernetes-vault-sample-app:"$VERSION" -f cmd/sample-app/Dockerfile.dev cmd/sample-app/

# Push images
# docker push imriss/kubernetes-vault:"$VERSION"
# docker push imriss/kubernetes-vault-init:"$VERSION"
# docker push imriss/kubernetes-vault-sample-app:"$VERSION"
