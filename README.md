[![Docker Build Status](https://img.shields.io/docker/build/zenika/alpine-node.svg)](https://hub.docker.com/r/zenika/alpine-node/) [![Docker Pulls](https://img.shields.io/docker/pulls/zenika/alpine-node.svg)](https://hub.docker.com/r/zenika/alpine-node/)

# Supported tags and respective `Dockerfile` links

 * `9`
 
 * `10`, `latest` [(Dockerfile)](https://github.com/Zenika/alpine-node/blob/master/Dockerfile)

 * `onbuild` [(onbuild/Dockerfile)](https://github.com/Zenika/alpine-node/blob/master/onbuild/Dockerfile)

 * `onbuild-yarn` [(onbuild/yarn/Dockerfile)](https://github.com/Zenika/alpine-node/blob/master/onbuild/yarn/Dockerfile)

 * `i18n`, `icu`, `full-icu` [(full-icu/Dockerfile)](https://github.com/Zenika/alpine-node/blob/master/full-icu/Dockerfile)

 * `circleci-i18n`, `circleci-icu`, `circleci-full-icu` [(full-icu/Dockerfile)](https://github.com/Zenika/alpine-node/blob/master/circleci/Dockerfile)

# alpine-node
Minimal Node Docker Images built on Alpine Linux

Based on `node:alpine`

# What is Node

Node.js is a software platform for scalable server-side and networking applications. Node.js applications are written in JavaScript and can be run within the Node.js runtime on Mac OS X, Windows, and Linux without changes.

Node.js applications are designed to maximize throughput and efficiency, using non-blocking I/O and asynchronous events. Node.js applications run single-threaded, although Node.js uses multiple threads for file and network events. Node.js is commonly used for real-time applications due to its asynchronous nature.

Node.js internally uses the Google V8 JavaScript engine to execute code; a large percentage of the basic modules are written in JavaScript. Node.js contains a built-in, asynchronous I/O library for file, socket, and HTTP communication. The HTTP and socket support allows Node.js to act as a web server without additional software such as Apache.

> [wikipedia.org/wiki/Node.js](https://en.wikipedia.org/wiki/Node.js)

![logo](https://raw.githubusercontent.com/docker-library/docs/01c12653951b2fe592c1f93a13b4e289ada0e3a1/node/logo.png)

# Why this image

We often need to support `node-sass` or GIT Urls as NPM dependencies.
We created this image to get a fully node-ready image.

# Why the "i18n" image

For i18n, we need to embed `full-icu`. See #9 for more information.

```
docker container run -it --rm zenika/alpine-node:i18n node -p "Number(2.3).toLocaleString('fr')" 
2,3
```

# Why the "circleci" image

In order to follow circleci custom images and get i18n on it, we create a tag `circleci-full-icu`. See #12 and (this)[https://circleci.com/docs/2.0/custom-images/] for more information. Be careful, it's not based on a `alpine` image.

# How to use this image

See [How To Use This Image](https://github.com/nodejs/docker-node/blob/master/README.md#how-to-use-this-image) on GitHub for up-to-date documentation.

# Reference

 * Node website : https://nodejs.org

 * Where to file issues : https://github.com/Zenika/alpine-node/issues

 * Maintained by : https://www.zenika.com

# Versions (in latest)

## Alpine version

```
docker container run --rm zenika/alpine-node cat /etc/alpine-release
3.8.1
```

## Node version

```
docker container run --rm zenika/alpine-node node -v
v10.10.0
```

## NPM version

```
docker container run --rm zenika/alpine-node npm -v
6.4.1
```

## Yarn version

```
docker container run --rm zenika/alpine-node yarn --version
1.9.4
```

## GIT version

```
docker container run --rm zenika/alpine-node git --version
git version 2.18.0
```

## Python version

```
docker container run --rm zenika/alpine-node python -V
Python 2.7.15
```
