#!/bin/sh -l
cat $INPUT_TFVARS
echo "$INPUT_AWS_ACCESS_KEY_ID"  
echo "$INPUT_AWS_SECRET_ACCESS_KEY"  
echo "$INPUT_AWS_DEFAULT_REGION"  
time=$(date)
echo "time=$time"
# terraform init
curl -L "https://github.com/localstack/localstack/blob/master/docker-compose.yml" -o docker-compose.yml
docker-compose up -d 
cd /workspace 
terraform init
terraform plan