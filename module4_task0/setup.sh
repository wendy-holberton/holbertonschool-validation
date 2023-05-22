#!/bin/bash
# docker build -t ubtun .
apt-get update && apt-get install -y make curl git zip jq

# Github machine
curl -LO https://github.com/gohugoio/hugo/releases/download/v0.111.3/hugo_extended_0.111.3_linux-amd64.deb 
dpkg -i hugo_extended_0.111.3_linux-amd64.deb
# Wendy machine
# curl -LO https://github.com/gohugoio/hugo/releases/download/v0.111.3/hugo_extended_0.111.3_linux-arm64.deb 
# dpkg -i hugo_extended_0.111.3_linux-arm64.deb

# apt install -y golang-go 
# curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b /usr/local/bin

npm install -g markdownlint-cli
npm install -g markdown-link-check