#!/bin/bash

# Author: insanerask
# Date: 2024-10-18

build_docker_image() {
    echo "Building Docker image..."
    docker build -t serveo-backdoor .
}

run_docker_container() {
    echo "Running Docker container..."
    docker run -it --rm -v ./:/development serveo-backdoor
}

main() {
    build_docker_image
    run_docker_container
}

main