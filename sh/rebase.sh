#!/usr/bin/env bash
upstream_br=`git symbolic-ref refs/remotes/upstream/HEAD | sed 's/refs\/remotes\/upstream\/\(.*\)/\1/'`
topic_branch=`git rev-parse --abbrev-ref HEAD`

git checkout ${upstream_br}
git pull
git checkout ${topic_branch}
git rebase ${upstream_br}
echo "Done."