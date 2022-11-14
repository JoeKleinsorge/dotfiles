#!/bin/bash
# Assumes gh cli is installed and gh auth login has been set

mkdir -p ~/git
cd ~/git
pwd
repos=$(gh repo list --no-archived --json name | jq -r '.[].name')
for repo in $repos
do
    # If repo already exists, pull latest changes
    if [ -d "$repo" ]; then
        echo "Pulling latest changes for $repo"
        cd $repo
        git pull
        cd ..
    fi
done
