#!/bin/bash

################################################
# Author: Shubham Bhavsar
# Date: 15th July 2025
# Version: v1
# 
# Description:
# This script will report the AWS resource usage
################################################

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users

set -x

# List S3 Buckets
aws s3 ls

# List EC2 Instances
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# List AWS Lambda functions
aws lambda list-functions

# List IAM users
aws iam list-users
