FROM node:alpine3.12

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 4000

ENTRYPOINT [ "/usr/src/app/entrypoint.sh" ]

CMD ["node", "app/server.js"]