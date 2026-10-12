#!/usr/bin/env bash

# useful_stuff preparation
REPO_URL="https://github.com/Bashbreakr/useful_stuff.git"
TARGET_DIR="$HOME/.useful_stuff"

prepare() {
    chmod +x ~/.useful_stuff/prepare.sh
    ~/.useful_stuff/prepare.sh
}

if [ -d "$TARGET_DIR/.git" ]; then
    git -C "$TARGET_DIR" pull
    prepare
else
    rm -rf ~/.useful_stuff
    git clone "$REPO_URL" "$TARGET_DIR"
    prepare
fi

~/.useful_stuff/random-wallpapers.sh
