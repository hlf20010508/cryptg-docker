# cryptg-docker
Docker image for built cryptg

## Image includes
- Alpine 3.17
- Python 3.8.16
- cryptg 0.4.0

## Include in your Dockerfile
```Dockerfile
FROM hlf01/cryptg:latest AS cryptg_builder
...
COPY --from=cryptg_builder /cryptg /usr/local/lib/python3.8/site-packages
```

## Build from source
```sh
git clone https://github.com/hlf20010508/cryptg.git
cd cryptg
sudo docker build -f Dockerfile -t cryptg --no-cache .
```

## Link
[Docker Hub](https://hub.docker.com/repository/docker/hlf01/cryptg)
