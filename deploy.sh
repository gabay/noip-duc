#!/bin/bash

VERSION=3.0.0

docker build -t gabay/noip-duc --build-arg VERSION=${VERSION} .
docker tag gabay/noip-duc gabay/noip-duc:${VERSION}
docker push gabay/noip-duc
docker push gabay/noip-duc:${VERSION}

