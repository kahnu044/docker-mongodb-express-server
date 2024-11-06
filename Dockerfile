# Use the official Node.js 14 image as a base image
FROM node:14

# Set the working directory inside the container
WORKDIR /usr/src/node_express_app

# Copy the package.json and package-lock.json from the server directory
COPY ./server/package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the Node.js app from the server directory
COPY ./server ./

# Command to run your application using nodemon
CMD ["npm", "start"]