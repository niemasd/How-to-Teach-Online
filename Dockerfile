FROM alpine:3.13.5
MAINTAINER Niema Moshiri <niemamoshiri@gmail.com>
RUN apk update && apk upgrade --no-cache && \
    apk add --no-cache --upgrade curl g++ gcc linux-headers musl-dev py3-pip python3 python3-dev && \
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y && \
    source "$HOME/.cargo/env" && \
    pip3 install --no-cache-dir --ignore-installed wheel
    #pip3 install --no-cache-dir --ignore-installed jupyter-book && \
    #rm -rf ~/.cache /tmp/*
