#!/bin/bash
# docker build -t ubtun .
apt-get update && apt-get install -y make curl
curl -L https://github.com/gohugoio/hugo/releases/download/v0.111.3/hugo_0.111.3_linux-arm64.deb > hugo.deb
dpkg --install ./hugo.deb
make build