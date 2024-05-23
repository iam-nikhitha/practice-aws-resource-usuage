#!/bin/bash

##########
#Author:nikhitha
#date:21-05-2024
#version 1
#script will report the  aws resouce usuage
##########

touch sample.txt

set -x 
echo "list aws ec2 instances "
aws ec2 describe-instances |jq '.Reservations[].Instances[].InstanceId' >>sample.txt

echo "list s3 buckets "
aws s3 ls >>sample.txt

echo " list lambda functions"
aws lambda list-functions >>sample.txt

echo " list IAM users"
aws iam list-users >>sample.txt
 
