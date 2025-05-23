#!/usr/bin/env bash
MSG="${1:-updates}"

git add .
git commit -m "${MSG}"
git push
echo "Done."
