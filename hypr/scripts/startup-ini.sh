#!/usr/bin/env bash

sleep 0.2

# Prepare useful_stuff 
REPO_URL="https://github.com/Bashbreakr/useful_stuff.git"
TARGET_DIR="$HOME/.useful_stuff"

prepare() {
    chmod +x "$TARGET_DIR/prepare.sh"
    "$TARGET_DIR/prepare.sh"
}

if [ -d "$TARGET_DIR/.git" ]; then
    git -C "$TARGET_DIR" pull
    prepare
else
    rm -rf "$TARGET_DIR"
    git clone "$REPO_URL" "$TARGET_DIR"
    prepare
fi

"$TARGET_DIR/random-wallpapers.sh"
