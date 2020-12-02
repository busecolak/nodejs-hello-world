FROM node:12-alpine
MAINTAINER Buse Colak <buse.colak.25@gmail.com>

ARG GIT_COMMIT=unspecified
LABEL git_commit=$GIT_COMMIT

WORKDIR /app

ENV PORT 11130

COPY package.json index.js ./

RUN npm install --only=production

EXPOSE $PORT
CMD [ "npm", "start" ]