# dotfiles

Manage your dotfiles by listing paths in `dotfiles.txt`.

## Manifest Format (`dotfiles.txt`)

- **File**: path without trailing slash (e.g., `.tmux.conf`)
- **Directory**: path with trailing slash (e.g., `.config/fish/`)

## Scripts

- `./fetch.sh` - copy from `$HOME` to repo
- `./deploy.sh` - copy from repo to `$HOME`
