# dotfiles

Manage your dotfiles by listing paths in `dotfiles.txt`.

## Manifest Format (`dotfiles.txt`)

- **File**: path without trailing slash (e.g., `.tmux.conf`)
- **Directory**: path with trailing slash (e.g., `.config/fish/`)

## Scripts

- `./fetch.sh [filter]` - copy from `$HOME` to repo
- `./deploy.sh [filter]` - copy from repo to `$HOME`

Optional filter argument to process only matching entries (partial match).

Examples:
```bash
./deploy.sh fish    # deploy only fish config
./fetch.sh nvim     # fetch only neovim config
./deploy.sh         # deploy all
```
