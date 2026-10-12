#!/usr/bin/env bash

REPO_URL="https://github.com/YOUR_USERNAME/YOUR_REPO.git"
TARGET_DIR="$HOME/.useful_stuff"

if [ -d "$TARGET_DIR/.git" ]; then
    git -C "$TARGET_DIR" pull
else
    git clone "$REPO_URL" "$TARGET_DIR"
fi
