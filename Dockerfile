FROM node:9-alpine

RUN apk add --no-cache make gcc g++ python git

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
