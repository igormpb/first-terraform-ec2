#!/bin/bash
read -p "plan in which environment development(1) or production(2) : " typeEnvironment
read -p "Do you want to apply? [yes/no]: " isApply

if [ "$typeEnvironment" == "1" ]; then
    echo "Running Terraform in dev"
    terraform plan -var-file=dev.tfvars
    if [ "$(echo "$isApply" | tr '[:upper:]' '[:lower:]')" == "yes" ]; then
        echo "Running apply"
        terraform apply -var-file=dev.tfvars
        echo "Finish"
    else
        echo "Goodbye!"
    fi
else
    echo "Running Terraform in production"
fi


