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

## with metric monitor docker image

* build base image

```code
docker build -t dalongrong/lapis-1.7.0:metrics  -f Dockerfile-base-metrics .
```

* metrics config(nginx conf)

```diff

server {
    listen ${{PORT}};
    lua_code_cache ${{CODE_CACHE}};
+   vhost_traffic_status_zone;


+ location /status {
+            vhost_traffic_status_display;
+            vhost_traffic_status_display_format html;
+    }
```

* metric watch

```code
open http://localhost:8080/status/format/prometheus
```
