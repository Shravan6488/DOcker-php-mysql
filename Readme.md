# Prerequisites:
- Docker
- git    -- https://www.atlassian.com/git/tutorials/install-git
- dockercompose

## Docker CLI
- Mac: https://docs.docker.com/docker-for-mac/install/
- Linux: https://docs.docker.com/install/linux/docker-ce/ubuntu/
- Windows: https://docs.docker.com/docker-for-windows/install/
 
 You Need install two important tools that we’ll use: the Docker CLI, and Docker Compose. 
 
- Docker compose URL: https://docs.docker.com/compose/

# once you have installed the above need to clone the repo
### git clone https://github.com/Shravan6488/DOcker-php-mysql.git

 
 Here’s my basic setup for organizing my Docker files within my project:
- ├── .docker
- │   └── php
- │       ├── Dockerfile
- │       └── vhost.conf
- ├── app
- ├── artisan
- ├── bootstrap
- ├── config
- ├── database
- ├── public
- ├── readme.md
- ├── resources
- ├── routes
- ├── storage
- ├── tests
- ├── composer.json
- ├── composer.lock
- ├── docker-compose.yml
- └── webpack.mix.js

## How to execute

#### cd DOcker-php-mysql

## For mac/linux: execute 
#### $ sh dockerexecute.sh
#### for windows double click on dockerexecute.sh file
and follow below steps once the shell exeucting completes.
### $ docker ps
CONTAINER ID        IMAGE                 
6765ebec3a4a        laravel-docker      
c96ee5470ed7        redis:4.0-alpine    
02aaf0f6bee9        mysql:5.7          


### $ docker exec -it 6765ebec3a4a /bin/bash   (for mac and linux)
### $ docker exec -it 6765ebec3a4a powershell   (for windows)

#### Note : you need to give the id of the image which is listed in my case it is 6765ebec3a4a

let’s migrate the database:

### $ php artisan migrate
# Connecting to MySQL Locally
### $ mysql -u root -P 13306 -h 127.0.0.1 -p
Enter password:
Server version: 5.7.18 MySQL Community Server (GPL)
...
show databases;
- +--------------------+
- | Database           |
- +--------------------+
- | information_schema |
- | laravel_docker     |
- | mysql              |
- | performance_schema |
- | sys                |
- +--------------------+
5 rows in set (0.01 sec)

mysql>




