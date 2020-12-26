# Setup fzf
# ---------
# this is not needed if installed by apt
# abs home was replaced with ~ didn't it , should work
# if [[ ! "$PATH" == */home/ndakota/.fzf/bin* ]]; then
#   export PATH="${PATH:+${PATH}:}~/.fzf/bin"
# fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "~/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "~/.fzf/shell/key-bindings.zsh"
