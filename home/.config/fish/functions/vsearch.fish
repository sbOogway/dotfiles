function vsearch
    rg --line-number --column --no-heading --color=always --smart-case "$argv" | fzf --ansi \
        --delimiter : \
        --preview 'bat --style=numbers --color=always --highlight-line {2} {1} 2>/dev/null || cat {1}' \
        --bind "enter:become(code --goto {1}:{2})"
end
