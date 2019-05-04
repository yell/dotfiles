#!/usr/bin/env bash
COMMIT_MSG='update'
[[ -z $1 ]] || COMMIT_MSG=$1
git pull
git add .
git commit -m "${COMMIT_MSG}"
git push
