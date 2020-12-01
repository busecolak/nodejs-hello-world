FROM node:12-alpine

WORKDIR /app

ENV PORT 11130

COPY package.json index.js ./

RUN npm install

EXPOSE 11130
CMD [ "node", "index.js" ]