FROM node:12-alpine3.12
RUN apk update
RUN mkdir -p /home/site/wwwroot
COPY . /home/site/wwwroot
RUN npm i /home/site/wwwroot/app
WORKDIR /home/site/wwwroot/app
CMD [ "index.js" ]