Prerequisites:
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
