FROM ubuntu:16.04

RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    libjpeg-dev \
    libpng-dev \
    libtiff-dev \
    freeglut3-dev

RUN mkdir /stitcher
WORKDIR /stitcher

RUN git clone https://github.com/simonfuhrmann/mve.git
RUN cd mve && make -j8

RUN mkdir /stitcher/stitches
COPY datasets /stitcher/datasets
COPY build-dino.sh /stitcher/build-dino.sh
RUN ["chmod", "+x", "/stitcher/build-dino.sh"]