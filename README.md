# cryptg-docker
Docker image for built cryptg

## Image includes
- Alpine
- Cryptg

## Include in your Dockerfile
```Dockerfile
FROM hlf01/cryptg:0.4.0-python3.8.16-alpine3.17 AS cryptg_builder
FROM python:3.8.16-alpine3.17
...
COPY --from=cryptg_builder /cryptg /usr/local/lib/python3.8/site-packages
```

## Build from source
```sh
git clone https://github.com/hlf20010508/cryptg-docker.git
cd cryptg-docker
sudo docker build -f Dockerfile -t cryptg --no-cache .
```

## Link
[Docker Hub](https://hub.docker.com/repository/docker/hlf01/cryptg)
