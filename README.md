# docker-clairctl
Dockerize [Clairctl]

[Clairctl] is an intergration of CoreOS [Clair] and Docker Registry.

This repository simply uses a multi-stage Dockerfile to build the Klar container image. You need to run docker build against docker daemon version 17.05 or greater. 

## To build  docker imag:

```
docker build -t clairctl .
```

## To use the image

```
docker run --rm -v config.yml:/root/config.yml -v $HOME/.docker:/root/.docker --config /root/config.yml analyze <image>
```

[Clairctl]: https://github.com/jgsqware/clairctl
[Clair]: https://github.com/coreos/clair

