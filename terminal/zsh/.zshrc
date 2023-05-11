export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"

# Source ==============================
source $ZSH/oh-my-zsh.sh
source /home/joe/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Theme =================================
ZSH_THEME="robbyrussell"

# Plugins ================================
plugins=(
	git
	kubelet
 	zsh-syntax-highlighting
 	zsh-autosuggestions
 	zsh-completions
)

# Alias =================================
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
alias gac="git add . && git commit -m"
alias gp="git push"
alias gpl="git pull"
alias gap="ga && gc 'ci: commit' && gp"
alias gitlog="git log --graph --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%an%C(reset)%C(bold yellow)%d%C(reset) %C(dim white)- %s%C(reset)' --all"
alias ls="exa --long --classify --icons --git --no-user"
alias sl="ls"
alias bat="bat --style=numbers --color=always"
alias vim="lvim"
alias py="python3"
alias k="kubectl"
alias lcc='echo -e "\e[1;32mfix:\e[0m a commit that fixes a bug."; echo -e "\e[1;36mfeat:\e[0m a commit that adds new functionality."; echo -e "\e[1;33mdocs:\e[0m a commit that adds or improves documentation."; echo -e "\e[1;35mtest:\e[0m a commit that adds unit tests."; echo -e "\e[1;31mperf:\e[0m a commit that improves performance, without functional changes."; echo -e "\e[1;34mchore:\e[0m a catch-all type for any other commits."'

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"


eval "$(starship init zsh)"

# AutoComplete ==========================
[[ $commands[kubectl] ]] && source <(kubectl completion zsh)
autoload -U compinit && compinit
