#!/bin/sh

timezone="America/Denver"
TAGNAME="$(cat TAGNAME)"

docker run --privileged -ti -d --log-opt max-file=1 --log-opt max-size=4m -e "TZ=$timezone" -v "$HOME:/h" \
  -p 2222:22 \
  -p 8081:80 \
  -p 8001-8010:8001-8010 \
  -p 9001-9010:9001-9010/udp \
  "$TAGNAME:latest" 

