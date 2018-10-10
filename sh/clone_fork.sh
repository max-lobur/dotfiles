#!/usr/bin/env bash
usage()
{
    echo "Usage:"
    echo "  "`basename $0`" <repo_url>"
    echo "Example:"
    echo "  "`basename $0`" git@github.com:${GH_USERNAME}/dotfiles.git"
    echo "Also make sure your GH_USERNAME env var is set."
    exit 1
}
[[ "$#" -ne 1 ]] && usage;
URL=$1
NAME=`basename ${URL} .git`

git clone ${URL}
cd ${NAME}
hub fork --no-remote ${URL} || true
git remote rename origin upstream
git remote add origin "git@github.com:${GH_USERNAME}/${NAME}.git"
echo "Git remotes:"
git remote -v
echo "DONE. cd ${NAME}"