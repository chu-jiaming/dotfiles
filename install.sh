#!/usr/bin/env bash
set -euo pipefail

stow \
  --dir="$HOME" \
  --target="$HOME" \
  --restow \
  dotfiles
