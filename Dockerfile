# Use the official Node.js 14 image as a base image
FROM node:14

# Set the working directory inside the container
WORKDIR /usr/src/node_express_app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of the application files to the working directory
COPY . .

# Command to run your application using nodemon
CMD ["npx", "nodemon", "server.js"]