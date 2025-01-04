# AWS Resource Monitoring Script

## Overview
This Bash script automates the monitoring and reporting of various AWS services including EC2, S3, IAM, and Lambda. It generates a consolidated report of resource usage across these services.

## Author
- **Created by**: Anandakrishnan KB
- **Version**: V1
- **Date**: January 4, 2025

## Prerequisites
- AWS CLI installed and configured
- jq (JSON processor) installed
- Appropriate AWS IAM permissions to access the following services:
  - EC2
  - S3
  - Lambda
  - IAM

## Required AWS Permissions
The script requires the following AWS permissions:
```json
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "ec2:DescribeInstances",
                "s3:ListBuckets",
                "lambda:ListFunctions",
                "iam:ListUsers"
            ],
            "Resource": "*"
        }
    ]
}
```

## Installation
1. Clone this repository:
```bash
git clone [repository-url]
cd [repository-name]
```

2. Make the script executable:
```bash
chmod +x resource_monitor.sh
```

## Usage
Simply run the script:
```bash
./resource_monitor.sh
```

The script will create a file named `ResourceTracer` containing information about:
- EC2 Instance IDs
- S3 Bucket listings
- Lambda Functions
- IAM Users

## Output Format
The script generates a report with clearly marked sections:
```
===== EC2 Instances =====
[List of EC2 Instance IDs]

===== S3 Buckets =====
[List of S3 Buckets]

===== Lambda Functions =====
[List of Lambda Functions]

===== IAM Users =====
[List of IAM Users]
```

## Troubleshooting
Common issues and solutions:
1. **Permission Denied**: Ensure the script has executable permissions
2. **AWS CLI errors**: Verify AWS credentials are properly configured
3. **jq not found**: Install jq using your package manager
   ```bash
   # For Ubuntu/Debian
   sudo apt-get install jq
   
   # For CentOS/RHEL
   sudo yum install jq
   ```

