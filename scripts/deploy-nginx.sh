#!/bin/bash

# Deploy infrastructure
cd terraform
terraform init
terraform apply -auto-approve

# Wait for cluster to be ready
sleep 60

# Get cluster credentials
gcloud container clusters get-credentials client-x-cluster --region us-central1

# Deploy all Kubernetes resources
kubectl apply -f ../kubernetes/webapp-deployment.yaml
kubectl apply -f ../kubernetes/webapp-service.yaml
kubectl apply -f ../kubernetes/ingress.yaml

echo "Deployment complete!"