FROM node:8-slim

RUN apt-get update && \
    apt-get install -y \
    python-pip \
    python-dev \
    build-essential \
    groff \
    less \
    jq \
    zip \
    git \
    && pip install --upgrade pip \
    && pip install --upgrade virtualenv \ 
    && apt-get clean

RUN pip install --upgrade awscli \
    awsebcli

RUN curl -o yq https://github.com/mikefarah/yq/releases/download/2.1.1/yq_linux_386 && \
    chmod +x ./yq

ENV PATH /yq:$PATH