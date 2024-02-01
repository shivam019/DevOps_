#!/bin/bash

#########
# Author : Shivam
# Date: 1-02-2024
# Version : v1
#
# This script will reprot the AWS Resourse usage

#########

#AWS S3
#AWS EC2
#AWS LAMBA
#AWS IAM Users

set +x   #debug mode

echo "list s3 Buckets"
aws s3 ls > resourceTracker
#information will store in the file name resourceTracker

echo "list ec2 instance"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

echo "list lamda"
aws lamda list-functions

echo "list IAM users"
aws iam list-user

