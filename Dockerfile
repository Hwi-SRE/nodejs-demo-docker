FROM node:latest as node
WORKDIR /app
COPY . .
RUN npm insall
RUN npm run build --prod



FROM nginx:alpine
COPY --from=node /app/dist/adesso-assessment /usr/share/nginx/html
