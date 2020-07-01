FROM node:6.11.2
LABEL MAINTAINER="ritadcalves"

ENV DIR=/service

COPY package.json $DIR/package.json

RUN cd $DIR \
    && npm install \
    && npm install -g grunt
 
COPY . $APP_DIR

WORKDIR $APP_DIR