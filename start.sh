#!/bin/sh

timezone="America/Denver"
TAGNAME="$(cat TAGNAME)"

docker run --privileged -ti -d --log-opt max-file=1 --log-opt max-size=4m -e "TZ=$timezone" -v "$HOME:/home" \
  -p 2222:22 -p 8000:80 -p 8001:8001 -p 8002:8002 -p 8003:8003 -p 8004:8004 -p 8005:8005 -p 8006:8006 -p 8007:8007 -p 8008:8008  "$TAGNAME:latest" 

