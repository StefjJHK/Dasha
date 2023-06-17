FROM node:18.16.0

WORKDIR /app

COPY package.json .
COPY package-lock.json .

RUN npm install
RUN npm config set strict-ssl=false

COPY . .

CMD [ "npm", "start" ]
