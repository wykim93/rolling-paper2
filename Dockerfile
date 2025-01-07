FROM node:23-alpine3.20
WORKDIR /home/node
COPY ./ ./
RUN npm -y install
EXPOSE 3000
CMD ["npm","run","start"]
