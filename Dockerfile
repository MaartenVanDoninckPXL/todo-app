# syntax=docker/dockerfile:1

# Use official Node.js image based on Alpine Linux version 18
FROM node:18-alpine

# Set working directory inside container to /app
WORKDIR /app

# Copy all files from current directory on host to /app directory in container
COPY . .

# Install production dependencies using Yarn
RUN yarn install --production

# Specify command to run application
CMD ["node", "src/index.js"]

# Expose port 3000 to allow external access to application
EXPOSE 3000
