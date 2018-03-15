FROM wicastr/node:6.13.1

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ONBUILD ARG NODE_ENV=production
ONBUILD ENV NODE_ENV $NODE_ENV
ONBUILD ARG NODE_PORT=3000
ONBUILD ENV NODE_PORT $NODE_PORT

ONBUILD COPY package.json ./
ONBUILD RUN npm install --${NODE_ENV} && npm cache clean --force

ONBUILD COPY . .

ONBUILD EXPOSE ${NODE_PORT}

CMD [ "npm", "start" ]
