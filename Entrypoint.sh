#!/bin/bash

acess_key=$(jq -r '.inputs.aws-access-key-id' action.yml)
echo "$acess_key"