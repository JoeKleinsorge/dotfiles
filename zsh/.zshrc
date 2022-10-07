export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
plugins=(
	git
	kubectl
	oc
)
source $ZSH/oh-my-zsh.sh

#=========================================================
# = Aliases =
#=========================================================
alias brew="arch -x86_64 brew"
alias ls="exa --all --long --classify --icons --git --no-user"
alias sl="ls"
alias ga="git add ."
alias gp="git commit -m 'ci:commit' && git push"
alias gap="ga && gp"
alias bat="bat --style=numbers --color=always"
alias s="kitty +kitten ssh"
