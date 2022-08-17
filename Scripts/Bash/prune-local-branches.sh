#!/usr/bin/env bash

# Script that deletes local branches that were merged on remote
# author: @victormarcias

function pruneLocalBranches {
    # Checks which branches are 'gone', aka merged in origin,
    # and deletes them in the local machine
    git remote prune origin;
    git branch -vv | grep 'origin/.*: gone]' | awk '{print $1}' | xargs git branch -D;
}

# The script can navigate several folders (see below)
function pruneMergedBranchesInDir {
    if [ -d $1 ]
    then
        cd $1
        echo "🔥 - Pruning \033[1;37m$1\033[0m local branches."
        pruneLocalBranches
        cd "../"
    else
        echo "⚠️ - Directory \033[1;31m$1\033[0m not found."
    fi
}

# From the root...
pruneMergedBranchesInDir 'directory1'
pruneMergedBranchesInDir 'directory2'
# etc...
