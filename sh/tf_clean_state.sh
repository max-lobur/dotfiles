#!/usr/bin/env bash
for o in `terragrunt state list`; do terragrunt state rm $o; done