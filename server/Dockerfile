FROM mhart/alpine-node:latest
WORKDIR /app
COPY package*.json ./
RUN npm install -g npm@8.18.0 --silent
COPY . ./
EXPOSE 8000