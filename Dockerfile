FROM python:3.8.16-alpine3.17 AS cryptg_builder
RUN apk add --update --no-cache rustup build-base &&\
    rustup-init -y &&\
    source $HOME/.cargo/env &&\
    pip install -t / cryptg==0.4.0
FROM alpine:3.17
COPY --from=cryptg_builder /cryptg /cryptg
