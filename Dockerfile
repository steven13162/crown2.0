FROM node:12-alpine
RUN apk add --no-cache python g++ make
WORKDIR /APP
COPY ..
RUN yarn install --production
CMD [ "node", "index.html"]