#!/bin/bash
# Setup cloud environments and provision infrastructure

# AWS
aws configure
cd ../terraform/aws
terraform init
terraform apply -auto-approve

# Azure
cd ../../terraform/azure
terraform init
terraform apply -auto-approve

# GCP
cd ../../terraform/gcp
terraform init
terraform apply -auto-approve
