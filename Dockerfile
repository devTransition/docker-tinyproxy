###############################################################################
# Name:         Dockerfile
# Author:       Daniel Middleton <daniel-middleton.com>
# Description:  Dockerfile used to build dannydirect/tinyproxy
# Usage:        docker build -t dannydirect/tinyproxy:latest .
###############################################################################

FROM alpine:3.8

MAINTAINER Daniel Middleton <monokal.io>

RUN apk add --no-cache \
    bash \
    tinyproxy

COPY create_config.sh /create_config.sh
COPY run.sh /run.sh

ENTRYPOINT ["/run.sh"]

