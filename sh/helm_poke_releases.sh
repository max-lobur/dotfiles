#!/usr/bin/env bash
for release in `helm list | grep DEPLOYED | cut -d" " -f1`; 
do  
    last_revision=`helm history ${release} --max=1 | tail -1 | cut -d" " -f1`
    echo "Going to poke release ${release}:${last_revision}"
    sleep 3
    helm rollback ${release} ${last_revision}
done
echo "Done."