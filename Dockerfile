FROM node:12.13.1-alpine
LABEL MAINTAINER="ritadcalves"

ENV DIR=/service

COPY package.json $DIR/package.json

RUN cd $DIR \
    && npm install \
    && npm install -g grunt