#!/bin/sh

until mysqladmin ping -h"mariadb" -P"3306" --silent
do
  echo "Waiting For MariaDB Container."
  sleep 5
done

echo "Trying to connect with Mariadb"

mysql -h$HOST -P$PORT -p$PASSWORD -u$USERNAME < schema.sql;
echo "Schemna Created."


# Initialize MySQL database.
# ADD this file into the container via Dockerfile.