#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sat Apr 25 06:02:09 2020

@author: ellos

A script to upload local data to SageMaker
"""

import sagemaker, boto3, logging
from sagemaker import get_execution_role
from botocore.exceptions import ClientError

sagemaker_client = boto3.client('sagemaker')
s3_client = boto3.client('s3')