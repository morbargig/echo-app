FROM mhart/alpine-node:12

LABEL maintainer="morbargig@gmail.com"

WORKDIR /app

ADD . ./

RUN npm install

