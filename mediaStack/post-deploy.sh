#!/usr/bin/env bash

docker exec -it transmission mkdir -p /downloads/movies
docker exec -it transmission chown -R 1000:1000 /downloads/movies

docker exec -it transmission mkdir -p /downloads/tvshows
docker exec -it transmission chown -R 1000:1000 /downloads/tvshows