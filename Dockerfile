FROM node:7-alpine

RUN apk add --update --no-cache make gcc g++ python git && \
  rm -rf /tmp/* /var/cache/apk/*

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
