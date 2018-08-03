FROM ubuntu:16.04
MAINTAINER Alberto Dallolio <albydallo@gmail.com>

# working directory
ENV HOME /root
WORKDIR $HOME

RUN apt-get update && apt-get install -y \
    make \
    cmake \
    jam \
    ant \
    cmake-curses-gui \
    xdot \
    libantlr3c-3.2.0 \
    libantlr3c-dev \
    libboost-all-dev \
    python \
    doxygen \
    git \
    tig \
    curl \
    wget \
    nano \
    gcc \
    g++ \
    autoconf \
    automake

## Clone t-rex and europa and prepare for building
RUN git clone https://github.com/fredpy/trex2-agent.git && \
    mkdir trex.build && \
    git clone https://github.com/zepinto/europa.git


CMD ["bash"]