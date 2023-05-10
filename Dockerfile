FROM node:12-alpine3.14
WORKDIR /app
COPY package.json /app
RUN NODE_ENV=development npm i ci --only=production && npm cache clean --force
COPY . /app
CMD node index.js
EXPOSE 8081
