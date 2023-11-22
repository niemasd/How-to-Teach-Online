FROM alpine:3.13.5
MAINTAINER Niema Moshiri <niemamoshiri@gmail.com>
RUN apk update && apk upgrade --no-cache && \
    apk add --no-cache bash curl gcc py3-pip python3
