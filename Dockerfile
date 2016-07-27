FROM alpine:3.4

RUN apk add --update --no-cache make gcc g++ python nodejs git && \
  rm -rf /tmp/* /var/cache/apk/*

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app