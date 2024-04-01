# Use Node.js as base image
FROM node:latest AS build

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application
COPY . .

# Build the React app
RUN npm run build

# Production environment
FROM nginx:stable-alpine

# Copy build files from the 'build' directory to nginx
COPY --from=build /app/build /usr/share/nginx/html

# Expose port 80
EXPOSE 3000

# Command to run nginx
CMD ["nginx", "-g", "daemon off;"]

# FROM node:14

# WORKDIR /app
# COPY package*.json .
# RUN npm install
# COPY . .
# CMD npm start
