# FILENAME: Buildfile

Bootstrap: docker
From: ubuntu:20.04

%post
    # Your setup commands here
    apt-get update && apt-get upgrade -y
    apt-get install -y python3 python3-pip

%environment
    export PATH=/usr/local/bin:$PATH

%runscript
    # Script that runs when the container starts
    echo "Running on Ubuntu 20.04"
    python3 --version
