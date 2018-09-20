FROM ubuntu:latest

RUN apt-get -y update

RUN apt-get -y install apt-utils


# create volume
RUN mkdir -p /src

# http://packages.ubuntu.com/de/trusty/build-essential
RUN apt-get -y install build-essential

RUN apt-get -y install cmake
RUN apt-get -y install ninja-build

# http://packages.ubuntu.com/de/trusty/valgrind
RUN apt-get -y install valgrind

RUN apt-get -y install libncurses5-dev

COPY cval.sh /usr/bin/cval

COPY bin/nngcat /usr/local/bin/nngcat
COPY lib/libnng.a /usr/local/lib/libnng.a
COPY lib/cmake /usr/local/lib/cmake
COPY include/nng /usr/local/include/nng

# launch
CMD bash
