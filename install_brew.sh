#!/bin/sh

mkdir "$HOME/.linuxbrew" &&
  curl -L "https://github.com/Homebrew/brew/tarball/main" |
  tar xz --strip-components '1' -C "$HOME/.linuxbrew"

if [ -x "$HOME/.linuxbrew/bin/brew" ]; then
  eval "$("$HOME/.linuxbrew/bin/brew" 'shellenv')"
else
  echo "Could not found an executable brew after installation!"
fi

brew update --force --quiet
