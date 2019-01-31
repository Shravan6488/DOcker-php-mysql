# Prerequisites:
 to install on Mac, Linux, and Windows. 
 You Need install two important tools that we’ll use: the Docker CLI, and Docker Compose. 
 
 Docker compose URL: https://docs.docker.com/compose/
 
 Here’s my basic setup for organizing my Docker files within a Laravel project:

├── .docker
│   └── php
│       ├── Dockerfile
│       └── vhost.conf
├── app
├── artisan
├── bootstrap
├── config
├── database
├── public
├── readme.md
├── resources
├── routes
├── storage
├── tests
├── composer.json
├── composer.lock
├── docker-compose.yml
└── webpack.mix.js

We will use our Dockerfile to build an image locally, using docker build command:

### $ docker build \
###  --file .docker/Dockerfile \
###  -t laravel-docker .
 Before we run the application, let’s visualize the list of images we have locally, including our application image:

### $ docker images
REPOSITORY      TAG           IMAGE ID      SIZE
laravel-docker  latest        350d3977ef6e  445MB
php             7.1.0-apache. cb73c20d115c  386MB

# Running Apache
### $ docker run --rm -p 8080:80 laravel-docker
### $ docker-compose up --build
### $ chmod -R o+rw bootstrap/ storage/
Also, to use Redis with Laravel, we need to install the predis/predis composer package:

### $ composer require predis/predis
### #Using docker-compose
### $ docker-compose exec app /bin/bash
### #Using Docker
### $ docker ps
CONTAINER ID        IMAGE
4c1ee740cb92        laravel-docker
ba094abe8c85        redis:4.0-alpine
6dce0efa2dc6        mysql:5.7

### $ docker exec -it 4c1ee740cb92 /bin/bash

Now that you know how to run bash commands in the running container, let’s migrate the database:

### $ php artisan migrate
# Connecting to MySQL Locally
### $ mysql -u root -P 13306 -h 127.0.0.1 -p
Enter password:
Server version: 5.7.18 MySQL Community Server (GPL)
...
show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| laravel_docker     |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
5 rows in set (0.01 sec)

mysql>




