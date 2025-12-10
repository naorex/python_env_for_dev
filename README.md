# Python Environmet for development

## Build docker-image and push to DockerHub

### Login to DockerHub

```shell
docker login
```

### Build docker-image

```shell
docker build -t naorex/uv-python-dev:latest .
```

### Push docker-image to DockerHub

```shell
docker push naorex/uv-python-dev:latest
```

## How to use

```shell
docker pull naorex/uv-python-dev:latest
```

```shell
docker run -it --rm -v $(pwd):/workspace naorex/uv-python-dev:latest
```
