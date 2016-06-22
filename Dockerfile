
# Pull base image
FROM resin/rpi-raspbian:jessie
MAINTAINER João Sena Ribeiro <sena@smux.net>

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
    libboost-python-dev \
    --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*

RUN pip3 install bluepy

# Define working directory
WORKDIR /data

# Define default command
CMD ["bash"]
