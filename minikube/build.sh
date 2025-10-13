#!/bin/bash

set -e

echo -e "Building account-service image... $(minikube image build -t account:0.0.1 ./account)\n"
echo -e "Building auth-service image... $(minikube image build -t auth-service:0.0.6 ./auth-service)\n"
echo -e "Building frontend... $(minikube image build -t frontend:0.0.6 ./frontend)\n"