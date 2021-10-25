# Docker-Container

## Task:

## Create two containers: 

One MariaDB-Init container and one MariaDB container.

This MariaDB-Init container should fill another database via a database connection.

Create a Docker image with the SQL file added to it.

In this Docker image, execute an entrypoint script that injects the SQL file into another container via database connection.

Create a docker-compose for the two containers (MariaDB-Init and MariaDB).
Parameterize the database connection parameters (host, port, user, password) in the entrypoint script from step 1, using Docker environment variables.
Extend the entrypoint script from step 1 to wait for the external database container to finish initializing before attempting to inject the SQL.

## SQL:

CREATE DATABASE HEALTHCHECK;

use HEALTHCHECK;

CREATE TABLE Healt (

Healtcheck int);
