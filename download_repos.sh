#!/bin/bash
# Assumes gh cli is installed and gh auth login has been set

mkdir -p ~/git
cd ~/git
pwd
repos=$(gh repo list --no-archived --json name | jq -r '.[].name')
for repo in $repos
do
    echo "cloning $repo"
    gh repo clone $repo
done