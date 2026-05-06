#!/bin/sh

mkdir -p "$HOME/.local/bin"
wget 'https://raw.githubusercontent.com/ivan-hc/AM/main/APP-MANAGER' \
  -O "$HOME/.local/bin/appman"

chmod +x "$HOME/.local/bin/appman"
