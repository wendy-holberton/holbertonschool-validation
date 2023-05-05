#!/bin/bash
# docker build -t ubtun .
apt-get update && apt-get install -y make curl
curl -LO https://github.com/gohugoio/hugo/releases/download/v0.84.0/hugo_extended_0.84.0_Linux-64bit.deb curl -L https://github.com/gohugoio/hugo/releases/download/v0.84.0/hugo_extended_0.84.0_Linux-64bit.deb 
dpkg -i hugo_extended_0.84.0_Linux-64bit.deb
make build