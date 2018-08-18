FROM node:latest

ENV Version 1

WORKDIR /dns-proxy

COPY . .

RUN npm install --production

CMD cd /dns-proxy && npm start 