#!/usr/bin/env bash
usage()
{
    echo "Usage:"
    echo "  "`basename $0`" 'commit message'"
    echo "Example:"
    echo "  "`basename $0`" FML"
    exit 1
}
[[ "$#" -ne 1 ]] && usage;
MSG=$1

git add .
git commit -m "${MSG}"
git push
echo "Done."