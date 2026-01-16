#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/common.sh"

filter="${1:-}"
process_dotfiles "deploy" "$REPO_DIR/home" "$HOME_DIR" "$filter"
