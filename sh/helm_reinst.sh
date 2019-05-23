#!/usr/bin/env bash
helm_del.sh $@
sleep 3
helm_inst.sh $@