#!/bin/bash

for i in account-service auth-service db-account db-auth frontend otel-collector prometheus  vault;
    do minikube kubectl -- apply -f ./helm/$i/application.yml;
done