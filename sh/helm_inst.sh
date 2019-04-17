#!/usr/bin/env bash
helm template $@ | kubectl apply -f -