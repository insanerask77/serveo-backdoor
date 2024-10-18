FROM ubuntu:latest

WORKDIR /development

RUN apt-get update && apt-get install -y \
    curl \
    nano \
    vim \
    ssh \
    build-essential \
    cron

ENTRYPOINT ["/bin/bash"]