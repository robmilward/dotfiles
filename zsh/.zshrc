# oh-my-zsh configuration
export ZSH=/home/rob/.oh-my-zsh

ZSH_THEME="ys"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="yyy-mm-dd"

plugins=(
  git
  aws
)

source $ZSH/oh-my-zsh.sh

# user configuration
if [[ -n $SSH_CONNECTION ]]; then
	export EDITOR='vim'
else
	export EDITOR='vim'
fi

# alias configuration
for f in ~/.aliases/*; do source $f; done

# path configuration
PATH=~/.local/bin:$PATH
for f in ~/.paths/*; do source $f; done

export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=white,bg=blue"
