#!/bin/bash
arn_role=arn:aws:iam::330067551437:role/service-role/AmazonSageMaker-ExecutionRole-20200425T020246
instance=m1.t2.medium
region=us-west-2

while getopts ":n:" opt; do
  case $opt in
    n) name=$OPTARG
    ;;
    \?) echo "Invalid option -$OPTARG" >&2
    ;;
  esac
done

aws sagemaker create-notebook-instance \ 
--notebook-instance-name $name 
--instance-type ml.t2.medium 
--role-arn $arn_role 
--region us-west-2 
--output json


