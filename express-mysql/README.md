
# ####corregir

# HOW TO RUN APPLICATION CORRECTLY

First of all, there will be two containers running:<br>

- app
- db

This is important to keep in mind, because we will be running them with
docker-compose functionalities (both in development and production). <br>

You can also notice the "Jenkinsfile", which will enable us to execute
the automated pipeline script. <br>

## Overall functionalities explained

The overall application is a simple REST-API using Node-Express-MySQL that is
tested with a mocha-chai-nyc TDD approach. This app connects via the
generated network from docker-compose file (this is the main way to connect
the REST-API logic with the database). <br>

You can notice that the docker-compose file takes into account both "app" and
"db" directories (for setting up the database and for executing the main app).
<br>

## Running docker-compose to generate the magic

To run the docker-compose, we should be on the terminal, at the same level as the
docker-compose file inside the "express-mysql" folder. <br>
After that, we can run de application in development environment or in 
production environment.

### Development

```bash
docker-compose up --build
```

<br>

This should create and run the specified containers for the complete REST-API
and the database connections. <br>

To stop the containers, we can do it manually or we can run:

```bash
docker-compose down
```

<br>

### Production

```bash
docker-compose -f docker-compose.yml -f docker-compose.prod.yml up --build
```

<br>

This should create and run the specified containers for the complete REST-API
and the database connections. <br>

To stop the containers, we can do it manually or we can run:

```bash
docker-compose down
```

<br>

## Testing the application "manually"

An extra feature for the application, is the
"express-mysql.postman_collection.json", that shows us how to try-out the
specific REST-API endpoints. <br>

## Testing the applicaiton "automatically"

We can test the application with the unit-tests programmed inside the "test"
folder. To run them, we can execute the following commands (within the
"app" folder): <br>

```bash
npm install
npm test
npm coverage
```

This will install dependencies, run the unit-tests and finally, create the
overall coverage for our express-application.

<br>

# :whale: DOCKER :whale:



<img src="../assets/img/DockerAnimated.gif" width=30%> <br>

* [Docker](https://www.docker.com) <br>
Docker is an amazing revolutionary tool. It is an open platform for developing, shipping, and running applications. <br>
Docker enables you to separate your applications from your infrastructure so you can deliver software quickly. <br>
The best place to learn Docker basics is the official [Docker Start-guide](https://docs.docker.com/get-started/), where you can find amazing videos 
and useful documentation for sample projects and best practices. <br>
To explore Docker in further detail, my advice is to start reading the sections of interest from the [Docker Documentation](https://docs.docker.com). <br>


The information of this repository is based on many online tutorials, so feel free to use it as a guide for your future projects!.<br>
