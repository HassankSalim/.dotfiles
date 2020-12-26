# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="/home/ndakota/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"

ZSH_THEME="powerlevel9k/powerlevel9k"
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(oc git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
# Add GoLand 
PATH=/opt/GoLand/bin:$PATH

export GOROOT=/opt/go
export GOPATH=$HOME/GopherProjects
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

export NVM_DIR=~/.nvm
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

alias update_zshrc='source ~/.zshrc'

# Add python2 pip bins
export PATH=~/.local/bin:$PATH

# Add Postman Path
export PATH=/opt/PostmanCanary:$PATH
source /opt/ros/kinetic/setup.zsh

#Add PyCharm 
PATH="/opt/pycharm/bin:$PATH"

#Add Intellji
PATH="/opt/idea/bin:$PATH"

#Add Java Home
JAVA_HOME=/opt/java

#Add Java
PATH="$JAVA_HOME/bin:$PATH"

# Add Android Studio Path
PATH="/opt/android-studio/bin:$PATH"

# Add Flutter Path
PATH="/opt/flutter/bin:$PATH"

# Add Exercism Path
PATH="~/bin:$PATH"

plugins=(virtualenv)

POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status virtualenv)

alias dockbash="docker exec -it $1 $2"
eval $(thefuck --alias)

get_oc_logs () {
	oc logs $1 -n $2 > "/tmp/$1"
	echo -n "/tmp/$1" | xclip -selection c }

# Add Helm Path
PATH="/opt/helm:$PATH"
alias cdtmp="cd $(mktemp -d)"

function fh() {
    eval $( ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf -e +s --tac | sed 's/ *[0-9]* *//')
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias g=git
alias gc='git commit'
alias ga='git add'
alias :q=exit
alias -g C='| tr -d ''\n'' | xclip -selection clipboard'
source /home/ndakota/zsh-addons/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

function json_format() {
  echo $1 | jq
}

function findabspath() {
  realpath $(find . -name $1)
}

function local_onboard() {
 echo "if there is not output inc device limit"
 jwt3 -n $(curl -X POST "http://0.0.0.0:5000/api/v0/auth-keys/" -H "accept: application/json" -H "user: 997c65c0-860d-4c78-863d-b2f35ed0c790" -H "project: project-pyylndadsnxjdativxazxjgy" -H "Content-Type: application/json" -d "{ \"name\": \"$1\"}" | jq '.response.data') | jq
}


function kill_with_port() {
  kill -9 $(lsof -i :$1 | awk '{print $2}' | tail -1)  
}

# Maven Path
export M2_HOME=/opt/maven
export PATH=${M2_HOME}/bin:${PATH}

alias gc="git checkout "
alias gap="git add -p "
alias ga="git add "
