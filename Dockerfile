# Minimal Alpine Docker image with bash
FROM alpine:3.13.5
MAINTAINER Niema Moshiri <niemamoshiri@gmail.com>
RUN apk update && \
    apk add bash
