Dockerfile for ISA API base image based on python docker images from DockerHub.

```
docker build -t isatools/isatools:3.6-alpine-0.10.2 .
```

Find the built images at https://hub.docker.com/r/isatools/isatools/tags/

To pull the latest,

```
docker pull isatools/isatools:latest
```

or use,

```
FROM isatools/isatools:latest
```

in your `Dockerfile`.
