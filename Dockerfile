FROM node:alpine

RUN su

RUN npm i -g express
RUN npm i -g express-generator

RUN express /app
WORKDIR /app

RUN npm i -g yarn
RUN yarn install

CMD ["yarn", "start"]
