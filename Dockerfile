FROM node:12-alpine

WORKDIR /app

COPY package.json index.js ./

RUN npm install

EXPOSE 11130
CMD [ "node", "index.js" ]