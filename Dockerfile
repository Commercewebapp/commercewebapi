FROM node

WORKDIR /usr/src/app/
COPY ./ /usr/src/app/

RUN npm install
RUN apt-get update && apt-get install -y vim

EXPOSE 8080
CMD [ "node", "server.js" ]
