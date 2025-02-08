FROM node:latest

RUN user add -m nodeapp

USER nodeappuser

WORKDIR /nodeapp

COPY package.json ./

RUN npm install

COPY index.js src ./

EXPOSE 8888

CMD [ “node”, “index.js” ]
