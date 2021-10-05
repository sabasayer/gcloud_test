FROM node:12

WORKDIR /usr/src/app

ENV PORT 8080
ENV HOST 0.0.0.0

COPY package*.json ./

RUN yarn

# Copy local nuxt code to the container
COPY . .

# Build production app
RUN yarn build

# Start the service
CMD yarn start
