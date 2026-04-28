#!/bin/sh

./install_brew.sh

if ! command -v brew >/dev/null; then
  if [ -x "$HOME/.linuxbrew/bin/brew" ]; then
    eval "$($HOME/.linuxbrew/bin/brew shellenv)"
  elif [ -x "/home/linuxbrew/.linuxbrew/bin/brew" ]; then
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
  else
    echo "Could not found an executable brew!"
    return 1
  fi
fi

brew bundle
