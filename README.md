## **Open Inverter Docker**

This is a Docker image to setup a build environment for Johannes Huebner's Open Inverter [https://github.com/jsphuebner] (https://github.com/jsphuebner)

This has the advantage of getting an isolated build environment just for the open inverter.

## Pre-Requisites

 - Docker installed and running [https://www.docker.com/products/docker-desktop](https://www.docker.com/products/docker-desktop)

## Get Dependencies

    git submodule update --init

This will clone the repos for the bootloader and the firmware.

## Building the image
This will create a docker image to run the builds in, installing the required dependencies.

    docker build --tag openinverter .

 ## Building the code

Create the container, the command below will create a container with the above image (discarding it when we exit --rm), it will mount the current directory as a volume (-v source:target) so we can edit the code on the host and build in the container. It'll result in a terminal (-it) on the container, we can use this to build.

    docker run --rm -it -v ${PWD}:/app openinverter

There are a couple of build scripts for convenience.

    buildBootloader.sh
    buildFirmware.sh
