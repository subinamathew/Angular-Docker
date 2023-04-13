# Stage 1: Build an Angular Docker Image
FROM node as build
WORKDIR /app
COPY package*.json /app/
RUN npm install
COPY . /app
RUN npm run build 
# Stage 2, use the compiled app, ready for production with Nginx
FROM nginx:1-alpine-slim
COPY --from=build /app/dist/ /usr/share/nginx/html/