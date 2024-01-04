#! /bin/bash

# GH_TOKEN --> will be passed from the workflow as an env variable
ORGANIZATION=$1
REPOSITORY_NAMES=$2

# Split the comma-separated values into an array
IFS=',' read -ra repo_array <<< "$REPOSITORY_NAMES"

# Iterate over each repository name
for repo_name in "${repo_array[@]}"; do
    echo "Processing repository: $repo_name"

  curl -L \
    -X DELETE \
    -H "Accept: application/vnd.github+json" \
    -H "Authorization: Bearer $GH_TOKEN" \
    -H "X-GitHub-Api-Version: 2022-11-28" \
    https://api.github.com/repos/$ORGANIZATION/$repo_name

  echo "Deleted $repo_name"
done

echo "Execution completed"
