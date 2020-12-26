# Setup fzf
# ---------
if [[ ! "$PATH" == */home/ndakota/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/ndakota/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/ndakota/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/ndakota/.fzf/shell/key-bindings.zsh"
