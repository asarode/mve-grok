FROM ubuntu:16.04

RUN apt-get update && apt-get install -y \
    build-essentials \
    git \
    libjpeg-dev \
    libpng-dev \
    libtiff-dev \
    freeglut3-dev

RUN git clone https://github.com/simonfuhrmann/mve.git

WORKDIR mve