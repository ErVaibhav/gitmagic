#!/bin/bash

# Directory to search
SEARCH_DIR="$HOME"

# check if a directory is a git repository
is_git_repo() {
    git -C "$1" rev-parse --is-inside-work-tree > /dev/null 2>&1
}

# check and get the current branch
get_branch() {
    git -C "$1" rev-parse --abbrev-ref HEAD 2>/dev/null
}

# last commit date
get_last_commit_date() {
    git -C "$1" log -1 --format=%cd 2>/dev/null
}

# print to the terminal
echo -e "\n\033[1;34mScanning for Git Repositories in: $SEARCH_DIR\033[0m"
echo -e "========================================================"

find "$SEARCH_DIR" -type d -name ".git" | while read -r git_dir; do
    repo_dir="$(dirname "$git_dir")"
    
    if is_git_repo "$repo_dir"; then
        branch=$(get_branch "$repo_dir")
        last_commit_date=$(get_last_commit_date "$repo_dir")

        echo -e "\033[1;32mRepository:\033[0m $repo_dir"
        echo -e "\033[1;36mBranch:\033[0m $branch"
        echo -e "\033[1;33mLast Commit Date:\033[0m $last_commit_date"
        echo -e "--------------------------------------------------------"
    fi
done

echo -e "========================================================"
echo -e "\033[1;34mScan Complete.\033[0m"
