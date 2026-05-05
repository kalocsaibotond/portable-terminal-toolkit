#!/bin/sh

mkdir -p "$HOME/.local/bin"
if command -v 'wget' >'/dev/null' 2>&1; then
  wget 'https://github.com/srevinsaju/zap/releases/download/continuous/zap-amd64' \
    -O "$HOME/.local/bin/zap"
elif command -v 'curl' >'/dev/null' 2>&1; then
  curl 'https://github.com/srevinsaju/zap/releases/download/continuous/zap-amd64' \
    -O "$HOME/.local/bin/zap"
fi
chmod +x "$HOME/.local/bin/zap"
