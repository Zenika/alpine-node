# alpine-node
Minimal Node/io.js Docker Images built on Alpine Linux
Size: 76 MB (All Layers: 236.8 MB)

Layers:
- alpine:3.4 5 MB
- g++ 147 MB (needed for node-sass)
- git 17 MB (needed to checkout some repo outside npm)
- nodejs 27 MB
- python 38 MB (needed for node-sass)

# Node version

```
docker run --rm zenika/alpine-node node -v
v7.10.0
```

# NPM version

```
docker run --rm zenika/alpine-node npm -v
4.2.0
```

# Yarn version
```
docker run --rm zenika/alpine-node yarn --version
0.23.4
```

# GIT version

```
docker run --rm zenika/alpine-node git --version
git version 2.8.3
```

# Python version

```
docker run --rm zenika/alpine-node python -V
Python 2.7.12
```
