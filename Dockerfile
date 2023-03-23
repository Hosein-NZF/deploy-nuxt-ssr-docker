FROM node:18-alpine

RUN mkdir -p /var/www/dockerize-nuxt/nuxt-app
WORKDIR /var/www/dockerize-nuxt/nuxt-app

COPY package*.json ./
RUN npm install

COPY . .

RUN npm run build

EXPOSE 4000

ENV NUXT_HOST=0.0.0.0

ENV NUXT_PORT=4000

CMD [ "npm", "start" ]