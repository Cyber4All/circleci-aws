FROM node:8-slim

RUN apt-get update && \
    apt-get install -y \
    python3 \
    python3-pip \
    python3-setuptools \
    groff \
    less \
    jq \
    zip \
    && pip3 install --upgrade pip \
    && apt-get clean

RUN pip3 --no-cache-dir install --upgrade awscli

RUN curl -o yq https://github.com/mikefarah/yq/releases/download/2.1.1/yq_linux_386 && \
    chmod +x ./yq

ENV PATH /yq:$PATH