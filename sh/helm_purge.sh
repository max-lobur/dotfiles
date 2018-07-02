#!/usr/bin/env bash
for r in `helm list --all | grep DELETED | cut -d" " -f1`; 
do  
    helm delete $r --purge; 
done
echo "Done."