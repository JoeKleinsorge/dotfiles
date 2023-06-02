#!/bin/bash
# Assumes gh cli is installed and gh auth login has been set

mkdir -p ~/git
cd ~/git
repos=$(gh repo list --no-archived --json name | jq -r '.[].name')
for repo in $repos
do
    if [ -d "$repo" ]
    then
        # If repo already exists, pull latest changes
        echo "Pulling latest changes for $repo"
        cd $repo
        git pull
        cd ..
    else
        # If repo doesn't exist, clone it
        echo "cloning $repo"
        gh repo clone $repo
    fi
        # Check if repo has a pre-commit hook
    if [ ! -f "$repo/.pre-commit-config.yaml" ]
    then
        echo "No pre-commit hook for $repo"
        continue
    else
        cd $repo
        # Install pre-commit hooks
        echo "Installing pre-commit hooks for $repo"
        pre-commit install
	cd ..
    fi
done
