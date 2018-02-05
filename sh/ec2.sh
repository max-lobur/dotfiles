#!/usr/bin/env bash
PROF=$1
NAME=$2
aws --profile=${PROF} ec2 describe-instances --query "Reservations[].Instances[].[InstanceId,PrivateIpAddress,Tags[?Key=='Name'].Value]" --output=text | grep -i -B1 ${NAME}
