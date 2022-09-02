# client

# Stage 1
FROM mhart/alpine-node:latest as build-step
RUN mkdir -p /app
WORKDIR /app
COPY package.json /app
RUN npm install -g npm@8.18.0 --silent
RUN npm install express body-parser cors mongoose nodemon --force --silent
COPY . ./
RUN npm run build

# Stage 2
FROM nginx:1.17.1-alpine
COPY --from=build-step /app/build /usr/share/nginx/html
EXPOSE 8000
ARG PORT=http.conf
COPY ./${PORT} /etc/nginx/conf.d/default.conf
COPY --chown=nginx ./build/ /etc/nginx/webapp/
COPY --chown=nginx ./build/ /etc/nginx/webapp/latest/es6/
