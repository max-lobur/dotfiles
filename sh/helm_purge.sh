#!/usr/bin/env bash
for r in `helm list --all | grep DELETED | cut -d" " -f1`; 
do  
    echo "Purging '$r'" 
    helm delete $r --purge; 
done
echo "Done."