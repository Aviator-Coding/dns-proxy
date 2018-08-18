FROM node:latest

ENV Version 1

WORKDIR /dns-proxy

COPY . .

RUN npm install --production && \
    mkdir config

VOLUME /dns-proxy/config

EXPOSE 53/udp

CMD cd /dns-proxy && npm start 