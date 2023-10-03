#!/bin/sh -l
cat $INPUT_TFVARS
echo "$INPUT_AWS-ACCESS-KEY-ID"  
echo "$INPUT_AWS-SECRET-ACCESS-KEY"  
echo "$INPUT_AWS-DEFAULT-REGION"  
time=$(date)
echo "time=$time"  

