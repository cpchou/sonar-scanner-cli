docker-compose down
docker network prune
docker-compose up -d
docker exec -it scanner-cli sh