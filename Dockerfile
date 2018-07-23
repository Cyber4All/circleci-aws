FROM node:8-alpine

RUN apk --no-cache update && \
    apk --no-cache add python py-pip py-setuptools ca-certificates groff jq less && \
    pip --no-cache-dir install awscli && \
    rm -rf /var/cache/apk/*
