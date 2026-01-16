#!/bin/bash

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
HOME_DIR="$HOME"
MANIFEST="$REPO_DIR/dotfiles.txt"

process_dotfiles() {
    local mode="$1"
    local src_root="$2"
    local dest_root="$3"

    echo "${mode^}ing dotfiles from $src_root to $dest_root..."

    while IFS= read -r line || [ -n "$line" ]; do
        [ -z "$line" ] && continue
        src="$src_root/$line"
        dest="$dest_root/$line"

        if [[ "$line" == */ ]]; then
            if [ -d "$src" ]; then
                mkdir -p "$dest"
                cp -r "$src"/* "$dest/"
                echo "  ${mode^}ed (dir): $line"
            else
                echo "  Skipped (not found): $line"
            fi
        else
            if [ -f "$src" ]; then
                mkdir -p "$(dirname "$dest")"
                cp "$src" "$dest"
                echo "  ${mode^}ed (file): $line"
            else
                echo "  Skipped (not found): $line"
            fi
        fi
    done < "$MANIFEST"

    echo "Done!"
}
