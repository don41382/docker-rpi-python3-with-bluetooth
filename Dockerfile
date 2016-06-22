
# Pull base image
FROM resin/rpi-raspbian:jessie
MAINTAINER Felix Eckhardt felix.e@gmx.de

# Install dependencies
RUN apt-get update && apt-get install -y \
    python3 \
    python3-dev \
    python3-pip \
    python3-virtualenv \
    python3-wheel \
    gcc \
    build-essential \
    libglib2.0-dev \
    bluez \
    libbluetooth-dev \
    libboost-python-dev \
    git \ 
    --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*

RUN pip3 install bluepy
RUN pip3 install git+https://github.com/don41382/magicblue

# Define working directory
WORKDIR /data

# Define default command
CMD ["bash"]
