FROM node:latest

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PASSWORD=qwerty

WORKDIR /docker-testapp-main

COPY . .

RUN npm install

EXPOSE 5050

CMD ["node", "server.js"]