FROM node:alpine
WORKDIR /usr/src/app
COPY server.js .
COPY package.json .
RUN npm install
RUN adduser -D myuser
USER myuser
CMD node server.js $PORT
