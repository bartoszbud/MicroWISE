#!/bin/sh

docker exec -i vault vault login micro-wise
docker exec -i vault vault kv put secret/data/account-service/default db.username=account db.password=account123
docker exec -i vault vault kv put secret/data/auth-service/default db.username=auth db.password=auth123 jwt.token=gAHIHtgTBVT0LKqGOZpaM2CacosnA7WTMK/DY8yp18CpLg54omSnYLmhDHe3/+dWlWXPFDtqWjKpzV2ehyayIQ==