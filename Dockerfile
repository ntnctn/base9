FROM node:18-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .


RUN npm install -g nodemon


CMD ["npx", "concurrently", "node server.js", "node admin.js"]