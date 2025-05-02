# Use an official Ubuntu as a base image
FROM ubuntu:20.04

# Set the working directory inside the container
WORKDIR /app

# Install necessary dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    wget \
    cmake \
    git \
    thrift-compiler \
    libboost-all-dev \
    libssl-dev \
    libmemcached-dev \
    libmongoc-1.0-0 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Copy the project source code into the container
COPY . /app

# Run cmake and make to build the service
RUN mkdir /app/build \
    && cd /app/build \
    && cmake .. \
    && make

# Expose the port the service will listen on
EXPOSE 9091

# Command to run the PostStorageService
CMD ["/app/build/PostStorageService"]
