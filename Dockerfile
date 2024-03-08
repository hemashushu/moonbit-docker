FROM ubuntu:22.04

RUN apt update \
    && apt install -y curl vim unzip \
    && /bin/bash -c "$(curl -fsSL https://cli.moonbitlang.com/ubuntu_x86_64_moon_setup.sh)"

WORKDIR /root
