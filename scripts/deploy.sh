#!/bin/bash
# Deploy the application to all cloud clusters

# Update image references if needed
./update-image-refs.sh

# Deploy to AWS cluster
kubectl config use-context aws
kubectl apply -f ../kubernetes/

# Deploy to Azure cluster
kubectl config use-context azure
kubectl apply -f ../kubernetes/

# Deploy to GCP cluster
kubectl config use-context gcp
kubectl apply -f ../kubernetes/
