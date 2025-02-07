# Client-X-Platform Solution

## Overview
This repository provides an automated platform to deploy and manage containerized applications (WebApp, API, Database) using Kubernetes on Google Cloud. It also supports on-demand deployments of public Nginx instances.

## Features
- Infrastructure as Code using Terraform
- Kubernetes deployment configurations
- Centralized CI/CD pipelines using GitHub Actions
- Automated HTTPS ingress with Google-managed certificates
- On-demand Nginx deployments

## Getting Started

### Prerequisites
- Google Cloud account
- Terraform installed
- kubectl installed

### Setup Infrastructure

manual provisionning
```sh
cd terraform
terraform init
terraform apply -auto-approve
```

We also provides a github actions pipeline to provision Infrastructure on GoogleCloud using Terraform.

Kindly provide a Github Secret `GCP_SA_KEY` .

### Deploy Applications
Once the infrastructure is up, applications are deployed via GitHub Actions automatically. we set it with a manual trigger by user by clicking on the button `Run Workflow`.

**To deploy a only new Nginx instance:**
```sh
./scripts/deploy-nginx.sh
```

To deploy all K8s resources and trigger deployment:
```sh
./scripts/deploy.sh
```

### Destroy Infrastructure
```sh
cd terraform
terraform destroy -auto-approve
```