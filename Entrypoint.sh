#!/bin/sh -l
cat $INPUT_TFVARS
echo "$INPUT_AWS_ACCESS_KEY_ID"  
echo "$INPUT_AWS_SECRET_ACCESS_KEY"  
echo "$INPUT_AWS_DEFAULT_REGION"  
time=$(date)
echo "time=$time"
# terraform init

