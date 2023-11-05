#!/bin/bash
# Automation script for CloudFormation templates. 
#
# Parameters
#   $1: Execution mode. Valid values: deploy, delete, preview.
#
# Usage examples:
#   ./run.sh deploy <stack-name> <template-file> <paramter-file>
#   ./run.sh preview <stack-name> <template-file> <paramter-file>
#   ./run.sh delete
#

# Validate parameters
if [[ $1 != "deploy" && $1 != "delete" && $1 != "preview" ]]; then
    echo "ERROR: Incorrect execution mode. Valid values: deploy, delete, preview." >&2
    exit 1
fi

# Execute CloudFormation CLI
if [ $1 == "deploy" ]
then
    aws cloudformation deploy \
        --stack-name $2 \
        --template-file $3 \
        --parameter-overrides file://$4 \
        --capabilities "CAPABILITY_NAMED_IAM"  \
        --region=us-east-1
fi
if [ $1 == "delete" ]
then
    aws cloudformation delete-stack \
        --stack-name $2
fi
if [ $1 == "preview" ]
then
    aws cloudformation deploy \
        --stack-name $2 \
        --template-file $3 \
        --parameter-overrides file://$4
        --capabilities "CAPABILITY_NAMED_IAM"  \
        --region=us-east-1 \
        --no-execute-changeset
fi