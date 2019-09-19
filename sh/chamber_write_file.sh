#!/usr/bin/env bash
usage()
{
    echo "Usage:"
    echo "  "`basename $0`" <service> <key> <value>"
    echo "Example:"
    echo "  "`basename $0`" gitops git_ssh_key ./ssh_key_dev"
    echo "Stop using me once https://github.com/segmentio/chamber/issues/226 is solved."
    exit 1
}
[[ "$#" -ne 3 ]] && usage;
CHAMBER_SERVICE=$1
CHAMBER_KEY=$2
CHAMBER_FILE=$3
NEWLINE=$'\n' # Hack to make ssh key work thru SSM
aws ssm put-parameter --name /${CHAMBER_SERVICE}/${CHAMBER_KEY} --value "$(cat ${CHAMBER_FILE})${NEWLINE}" --type SecureString --key-id "arn:aws:kms:${AWS_DEFAULT_REGION}:${AWS_ACCOUNT_ID}:alias/parameter_store_key" --overwrite