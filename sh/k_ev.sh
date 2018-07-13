#!/usr/bin/env bash
kubectl get ev --all-namespaces --sort-by=lastTimestamp | grep -e Warning -e Error
