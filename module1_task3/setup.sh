#!/bin/bash
# docker build -t ubtun .
apt-get update && apt-get install -y hugo make
make build