FROM node:16.13.2-alpine

WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

COPY package.json /app/package.json
RUN npm install --silent
RUN npm install react-scripts@5.0.0 -g --silent

CMD ["npm", "start"]

