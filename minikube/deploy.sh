#!/bin/bash

for i in $(ls helm);
    do minikube kubectl -- apply -f ./helm/$i/application.yml;
done