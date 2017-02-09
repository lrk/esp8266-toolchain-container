# ESP8266 Toolchain Docker container


Create docker machine:

```shell
docker-machine create --driver virtualbox --virtualbox-cpu-count "4"   --virtualbox-memory "8192" dockermachine
```

Setting docker machine env:

```shell
@FOR /f "tokens=*" %i IN ('docker-machine env dockermachine') DO @%i
```

Build container:

```shell
docker build -f Dockerfile.ubuntu -t esp8266toolchain .
```

Running container shell:

```shell
docker run -ti --rm -e /bin/bash esp8266toolchain
```
