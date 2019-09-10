FROM debian:stretch

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y \
    gcc-arm-none-eabi \
    cmake \
    git \
    python

ADD . /app
WORKDIR /app

RUN chmod +x buildBootloader.sh
RUN chmod +x buildFirmware.sh
