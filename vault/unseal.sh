#!/bin/sh

docker exec -i vault vault operator init > ./vault/init

for i in 1 2 3; 
  do docker exec -i vault vault operator unseal $(grep "Unseal Key $i:" ./vault/init | awk '{print $4}'); 
done
      
echo "Initial Root Token: $(grep "Initial Root Token:" ./vault/init)"
rm ./vault/init