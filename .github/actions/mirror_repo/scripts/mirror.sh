#!/usr/bin/env sh
set -eu

export GIT_SSH_COMMAND="ssh -v -i ~/.ssh/id_rsa -o StrictHostKeyChecking=no"
git config --global --add safe.directory '*'
git remote add mirror "$INPUT_TARGET_REPO_URL"
if [ -z "$INPUT_SPECIFIC_BRANCH" ]
then
    git push --tags --prune --force mirror "refs/remotes/origin/*:refs/heads/*"
else
    git push --tags --prune --force mirror "refs/remotes/origin/$INPUT_SPECIFIC_BRANCH:refs/heads/$INPUT_SPECIFIC_BRANCH"
fi