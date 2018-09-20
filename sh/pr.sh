#!/usr/bin/env bash
#
# To make it work:
#   brew install hub
#   hub browse
#
# and git remotes:
# "origin" - your fork
# "upstream" - verygood-ops/infra-vault
#
UPSTREAM=verygood-ops/infra-vault:unify

echo -n "Pull Request Title (empty for last commit msg): "
read title
last_commit_title=`git --no-pager log -1 --pretty=format:%s`
title=${title:-$last_commit_title}

topic_branch=`git rev-parse --abbrev-ref HEAD`
git push origin ${topic_branch}

hub pull-request -b ${UPSTREAM} -F - > /tmp/last_pr_url <<MSG
${title}

`cat PULL_REQUEST_TEMPLATE`
MSG
pr_url=`cat /tmp/last_pr_url`
echo "Opening ${pr_url}"
open ${pr_url}%