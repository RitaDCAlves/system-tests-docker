FROM node:12.13.1-alpine
LABEL MAINTAINER="ritadcalves"

ENV DIR=/service

COPY package.json $DIR/package.json

RUN cd $DIR \
    && npm install \
    && npm install -g grunt

RUN apk --no-cache update && \
apk --no-cache add mysql-client python py-pip py-setuptools ca-certificates curl groff less jq && \
pip --no-cache-dir install awscli && \
rm -rf /var/cache/apk/*

RUN docker-compose up