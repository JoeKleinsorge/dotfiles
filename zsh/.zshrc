export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

source $ZSH/oh-my-zsh.sh

# =======================================
plugins=(
	git
	oc
	kubelet
)

# =======================================
alias cp='cp -v -i'
alias rm='rm -i'
alias mv='mv -i'
alias usage='du -hs ./* | sort -h'
alias fhis='history | ripgrep '
alias s="kitty +kitten ssh"
alias brew="arch -x86_64 brew"
alias gs="git status"
alias ga="git add ."
alias gc="git commit -m"
alias gp="git push"
alias gpl="git pull"
alias gap="ga && gc 'ci:commit' && gp"
alias ls="exa --long --classify --icons --git --no-user"
alias sl="ls"
alias bat="bat --style=numbers --color=always"
alias nivm="nvim"
alias n="nvim"
alias py="python3"
alias k="kubectl"


# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

[[ $commands[kubectl] ]] && source <(kubectl completion zsh)
