#!/usr/bin/env bash
#
# To make it work:
# - Generate a token at https://github.com/settings/tokens
# - brew install hub
# - cd gh_repo
# - hub browse
# - Login using gh username and a token
#
usage()
{
    echo "Usage:"
    echo "  "`basename $0`" <repo_url>"
    echo "Example:"
    echo "  "`basename $0`" git@github.com:max-lobur/dotfiles.git"
    exit 1
}
[[ "$#" -ne 1 ]] && usage;
URL=$1
NAME=`basename ${URL} .git`
GH_USERNAME=`cat ~/.config/hub | grep user | cut -d":" -f2 | xargs`

git clone ${URL}
cd ${NAME}
hub fork --no-remote ${URL} || true
git remote rename origin upstream
git remote add origin "git@github.com:${GH_USERNAME}/${NAME}.git"
echo "Git remotes:"
git remote -v
echo "DONE. cd ${NAME}"