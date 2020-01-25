FROM node:alpine

WORKDIR /usr/app

COPY ./backend/package*json ./

RUN npm i -g @adonisjs/cli

RUN npm install

RUN npm audit fix

COPY . .

EXPOSE 3000

CMD [ "adonis", "serve", "--dev" ]