#!/bin/sh

VERSION="$(cat VERSION)"
TAGNAME="$(cat TAGNAME)"
dockerfile=Dockerfile

docker build -t "$TAGNAME:$VERSION" -t "$TAGNAME:latest" --pull --no-cache -f "$dockerfile" .

