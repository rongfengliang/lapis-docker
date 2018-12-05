# lapis openresty docker image

## how to run

* build base image

```code
docker build -t dalongrong/lapis-1.7.0 -f Dockerfile-base .

or use build image

dalongrong/lapis-1.7.0
```

* demo running

```code
docker-compose up -d
```

* access web page

```code
open http://localhost:8080
```