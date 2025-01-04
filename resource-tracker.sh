#!/bin/bash

##########

# Author : Anandakrishnan KB
# Date : 04/01/25
# Version : V1

# This Script is used to report the usages of certain AWS services like EC2, S3, IAM, and Lambda.
##########

set -x

# Define the output file
OUTPUT_FILE="ResourceTracer"

# Add a header for EC2 instances
echo "===== EC2 Instances =====" >> $OUTPUT_FILE
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> $OUTPUT_FILE

# Add a header for S3 buckets
echo -e "\n===== S3 Buckets =====" >> $OUTPUT_FILE
aws s3 ls >> $OUTPUT_FILE

# Add a header for Lambda functions
echo -e "\n===== Lambda Functions =====" >> $OUTPUT_FILE
aws lambda list-functions >> $OUTPUT_FILE

# Add a header for IAM users
echo -e "\n===== IAM Users =====" >> $OUTPUT_FILE
aws iam list-users >> $OUTPUT_FILE
