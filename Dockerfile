FROM node:9.4.0-alpine
COPY app.js .
COPY package.json .
COPY / .
RUN npm install &&\
    apk update &&\
    apk upgrade
EXPOSE  3000
CMD node app.js
