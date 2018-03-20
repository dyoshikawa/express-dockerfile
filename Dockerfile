FROM node:alpine

USER root

RUN npm i -g yarn

RUN npm i -g express
RUN npm i -g express-generator

RUN express /app
WORKDIR /app

RUN yarn install

CMD ["yarn", "start"]
