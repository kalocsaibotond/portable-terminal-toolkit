#!/bin/sh

# Generates the locale of the brew glibc installation.
# It is needed to run tmux!

BREW_PREFIX="$(brew --prefix)"
BREW_GLIBC_LOCALEDEF="$BREW_PREFIX/opt/glibc/bin/localedef"
if [ ! -x "$BREW_GLIBC_LOCALEDEF" ]; then
  echo 'Could not found an executable localdef of brew glibc installation!'
  return 1
fi

TARGET_LOCALE="${1:-$LANG}"

LOCAL_BASE="$(echo "$TARGET_LOCALE" | cut -d '.' -f1)"

CHARMAP="$(echo "$TARGET_LOCALE" | cut -d '.' -f2)"
if [ -z "$CHARMAP" ]; then CHARMAP='UTF-8'; fi

mkdir -p "$BREW_PREFIX/opt/glibc/lib/locale"
"$BREW_GLIBC_LOCALEDEF" -i "$LOCAL_BASE" -f "$CHARMAP" "$TARGET_LOCALE"
