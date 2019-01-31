docker build \
  --file .docker/Dockerfile \
  -t laravel-docker .
  
docker run --rm -p 8080:80 laravel-docker
docker run \
  --name laravel-app \
  --rm -p 8080:80
  laravel-docker
  
 docker-compose up --build
 chmod -R o+rw bootstrap/ storage/
 composer require predis/predis
docker-compose exec app powershell
