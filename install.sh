#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

stow \
  --target="$HOME" \
  --restow \
  .
