FROM node:10.14.2

RUN apt-get update && \
    apt-get install -y python git python3-pip python3-setuptools ca-certificates groff jq less zip && \
    pip3 --no-cache-dir install awscli && \
    rm -rf /var/cache/apt-get/*
