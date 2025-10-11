#!/bin/sh

docker exec -i vault vault login micro-wise
docker exec -i vault vault kv put secret/account-service/default db.username=account db.password=account123
docker exec -i vault vault kv put secret/auth-service/default db.username=auth db.password=auth123