#!/bin/bash
component=$1
environment=$2  #don't use env here, it is reservedin linux
yum install python3.11-devel python3.11-pip -y
pip3.11 install ansible botocore boto3   #aws python packages
ansible-pull -U https://github.com/Prema-931/roboshop-ansible-roles-tf.git -e component=$component -e env=$environment main-tf.yaml