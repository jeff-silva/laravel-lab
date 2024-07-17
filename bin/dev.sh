#!/bin/sh

sh run env-copy

docker compose -f docker-compose.yml stop
docker compose -f docker-compose-prod.yml stop
docker compose up --build --force-recreate --remove-orphans
