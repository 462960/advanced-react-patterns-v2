FROM node:8.9.4

WORKDIR /usr/src/web

COPY package*.json ./

RUN npm i

RUN npm rebuild node-sass --force

# RUN npm run setup --silent

COPY . .

VOLUME /usr/src/web

EXPOSE 3000

CMD [ "npm", "start" ]
