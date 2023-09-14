FROM python:3.8.16-alpine3.17
RUN apk add --update --no-cache rustup build-base &&\
    rustup-init -y &&\
    source $HOME/.cargo/env &&\
    pip install -t / cryptg==0.4.0
