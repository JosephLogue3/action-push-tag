FROM alpine:latest

RUN apk add --no-cache git git-lfs \
    && git lfs install

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
