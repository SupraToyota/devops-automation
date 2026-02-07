#!/bin/bash

# Git Remote URL Generator

GITHUB_USER="YOUR_GITHUB_USERNAME"  # <--- ВПИШИ СЮДА СВОЙ НИК (без кавычек внутри кавычек)

read -p "Enter repository name: " REPO_NAME

if [ -z "$REPO_NAME" ]; then
    echo "Error: Repository name is required."
    exit 1
fi

SSH_URL="git@github.com:$GITHUB_USER/$REPO_NAME.git"

echo "Generated SSH URL:"
echo "$SSH_URL"
