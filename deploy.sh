#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/common.sh"

process_dotfiles "deploy" "$REPO_DIR/home" "$HOME_DIR"
