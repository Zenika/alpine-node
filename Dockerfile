FROM node:7.2-alpine

RUN apk add --no-cache git

WORKDIR /usr/src/app
