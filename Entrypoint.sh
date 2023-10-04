#!/bin/sh -l
cat $INPUT_TFVARS
echo "$INPUT_AWS_ACCESS_KEY_ID"  
echo "$INPUT_AWS_SECRET_ACCESS_KEY"  
echo "$INPUT_AWS_DEFAULT_REGION"  
time=$(date)
echo "time=$time"
# terraform init
python3 -m pip install --upgrade venv
python3 -m venv .venv      # <- create a new isolated environment
source .venv/bin/activate # <- activate it
python3 -m pip install --upgrade localstack    # <- install localstack in that environment
localstack                # <- run localstack

cd /workspace 
terraform init
terraform plan