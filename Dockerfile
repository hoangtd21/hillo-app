FROM node:18-alpine AS hilloapp

WORKDIR /app

COPY package.json .

COPY package-lock.json .
RUN npm install
# Copy app files

COPY . .

# Expose port
EXPOSE 5173

# Start the app
CMD [ "npm run", "dev" ]