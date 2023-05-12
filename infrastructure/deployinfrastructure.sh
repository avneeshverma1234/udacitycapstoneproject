#!/usr/bin/env bash
set -o xtrace

stackName="avneesh-udacitycapstone-stack-version2"
if [ -n "$1" ]; then
    $stackName=$1
fi

aws cloudformation deploy \
    --stack-name ${stackName} \
    --template-file eksvpcsubnets.yaml \
    --parameter-overrides file://eksparameters.json \
    --region "us-east-1" \
    --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM"