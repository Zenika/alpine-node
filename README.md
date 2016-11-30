# alpine-node

Minimal Node/io.js Docker Images built on Alpine Linux version.
Size: 72.88 MB

Layers:
- node:7.2-alpine 55.3 MB
- git 17.58 MB (needed to checkout some repo outside npm)

# Node version

```
docker run --rm zenika/alpine-node node -v
v7.2.0
```

# NPM version

```
docker run --rm zenika/alpine-node npm -v
3.10.9
```

# GIT version

```
docker run --rm zenika/alpine-node git --version
git version 2.8.3
```
