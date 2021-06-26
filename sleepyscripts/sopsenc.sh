#!/usr/bin/env bash

#---Example-----------------
# sops -e --encrypted-suffix '_sops_secret' -k arn:aws:kms:us-east-1:254516979945:key/d841bf37-7f94-4445-8703-f7cc86f77a73  --aws-profile cylancedata -i ./secrets.yaml
#---------------------------

# sops -e --encrypted-suffix '_sops_secret' -k $1 --aws-profile $2 -i $3

echo "sops -e --encrypted-suffix '_sops_secret' -k arn:aws:kms:us-east-1:254516979945:key/d841bf37-7f94-4445-8703-f7cc86f77a73  -i ./secrets.yaml --aws-profile cylancelegacy"

# $1 - kms_arn
# $2 - aws-profile
# $3 - input yaml/json file