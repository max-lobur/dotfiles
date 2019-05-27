#!/usr/bin/env bash
watch -n5 "kubectl get no && echo && kubectl get po --all-namespaces | grep -i -e creating -e pending -e crash -e backoff -e fail -e error"