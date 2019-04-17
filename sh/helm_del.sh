#!/usr/bin/env bash
helm template $@ | kubectl delete -f -