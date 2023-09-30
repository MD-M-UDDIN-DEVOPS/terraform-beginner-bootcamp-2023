#!/usr/bin/env bash

# Update and install required packages
sudo apt-get update && sudo apt-get install -y wget unzip

# Set the desired version of Terraform
TERRAFORM_VERSION="1.0.0"

# Download and install Terraform
wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip
unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip
sudo mv terraform /usr/local/bin/
rm terraform_${TERRAFORM_VERSION}_linux_amd64.zip

# Verify the installation
terraform --version
