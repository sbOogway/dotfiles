if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias l="exa -la --icons --git --header"

# Added by `rbenv init` on Wed Sep 17 06:24:27 PM CEST 2025
status --is-interactive; and ~/.rbenv/bin/rbenv init - --no-rehash fish | source

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH


# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
test -r '/home/oogway/.opam/opam-init/init.fish' && source '/home/oogway/.opam/opam-init/init.fish' > /dev/null 2> /dev/null; or true
# END opam configuration

# opencode
fish_add_path /home/oogway/.opencode/bin
