# MongoDB Express Server Docker Setup

This repository contains the Docker configuration for setting up a MongoDB and Express.js server. It's intended to be used as a starting point for developing and deploying applications that use MongoDB as the database and Express.js as the server.

## Prerequisites

- [Docker](https://www.docker.com/) installed on your machine.

## Getting Started

1. Clone this repository:

   ```bash
   git clone https://github.com/kahnu044/docker-mongodb-express-server.git
   ```

2. Navigate to the project directory:

   ```bash
   cd docker-mongodb-express-server
   ```

3. Create a `.env` file in the root directory and set your MongoDB credentials and other environment variables:

   ```env
   SERVER_APP_PORT=3003
   MONGODB_USER=myuser
   MONGODB_PASSWORD=mypassword
   MONGODB_DATABASE=mydatabase
   MONGODB_DOCKER_PORT=27017
   MONGODB_LOCAL_PORT=27018
   ```

   Adjust the values according to your preferences. The `.env` file in the root directory will be used by both Docker and your Express server.

4. Build and run the Docker containers( in `/server` directory):

   ```bash
   docker-compose up -d
   ```

   This will build and start the MongoDB and Express.js containers in the background.

5. Access your MongoDB Express Server:

   Open your web browser and go to [http://localhost:3003](http://localhost:3003). You should see the MongoDB Express interface.

## Stopping the Containers

To stop the containers, run:

```bash
docker-compose down
```

This will stop and remove the Docker containers.

## Notes

- The MongoDB data is stored in a Docker volume, ensuring persistence even after container restarts.
- The `.env` file is located in the root directory and provides configuration for both the Docker services and your Express server.
- Ensure that any necessary modifications to the server or MongoDB settings are reflected in the `.env` file or the Docker configuration.

Make sure to customize the configuration files and environment variables according to your application's requirements.
