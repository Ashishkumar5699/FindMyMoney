#!/bin/sh
# Installs fmm, the FindMyMoney command-line tool.
#   curl -fsSL https://findmymoney.pnjb.in/cli/install.sh | sh
# Set FMM_INSTALL_DIR to install somewhere other than ~/.local/bin.
set -eu

URL="https://findmymoney.pnjb.in/cli/fmm"
DIR="${FMM_INSTALL_DIR:-$HOME/.local/bin}"

if ! command -v python3 >/dev/null 2>&1; then
  echo "fmm needs Python 3 — install it first (macOS: xcode-select --install, or python.org)." >&2
  exit 1
fi

mkdir -p "$DIR"
TMP="$(mktemp)"
trap 'rm -f "$TMP"' EXIT
curl -fsSL "$URL" -o "$TMP"
if ! head -n 1 "$TMP" | grep -q '^#!/usr/bin/env python3'; then
  echo "Download from $URL doesn't look like fmm — not installing." >&2
  exit 1
fi
chmod 755 "$TMP"
mv "$TMP" "$DIR/fmm"
trap - EXIT

echo "Installed $("$DIR/fmm" --version) to $DIR/fmm"
case ":$PATH:" in
  *":$DIR:"*) echo "Next: fmm login" ;;
  *) echo "Add $DIR to your PATH, e.g.: echo 'export PATH=\"$DIR:\$PATH\"' >> ~/.zshrc" ;;
esac
