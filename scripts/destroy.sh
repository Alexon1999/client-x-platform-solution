#!/bin/bash

# Destroy infrastructure
cd terraform
terraform destroy -auto-approve

echo "Infrastructure destroyed successfully!"