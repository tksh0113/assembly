FROM alpine:latest

RUN apk update && \
    apk add --no-cache nasm build-base mtools \
    && rm -rf /var/cache/apk/*

WORKDIR /home/nasm

# ENTRYPOINT ["/usr/bin/nasm"]
