#! /bin/bash

# GH_TOKEN --> will be passed from the workflow as an env variable
ORGANIZATION=$1
REPOSITORY_NAME=$2


curl -L \
  -X DELETE \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $GH_TOKEN" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/$ORGANIZATION/$REPOSITORY_NAME