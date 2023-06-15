FROM node:18-alpine AS hilloapp

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install && npm install react-scripts@5.0.1 -g --silent

COPY . ./

RUN npm run build

FROM nginx:latest
COPY --from=hilloapp /usr/src/app/dist /usr/share/nginx/html