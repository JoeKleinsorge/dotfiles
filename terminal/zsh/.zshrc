export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"

source $ZSH/oh-my-zsh.sh

[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

eval "$(starship init zsh)"
eval "$(github-copilot-cli alias -- "$0")"

autoload -U +X compinit && compinit
[[ $commands[kubectl] ]] && source <(kubectl completion zsh)

ZSH_THEME="robbyrussell"

# =======================================
plugins=(
	git
	oc
	kubelet
 	zsh-syntax-highlighting
 	zsh-autosuggestions
 	zsh-completions
)

# =======================================
alias brew='arch -arm64 brew install'
alias cp='cp -v -i'
alias rm='rm -i'
alias mv='mv -i'
alias usage='du -hs ./* | sort -h'
alias fhis='history | ripgrep '
alias s='wezterm ssh'
alias brew="arch -arm64 brew"
alias gs="git status"
alias ga="git add ."
alias gc="git commit -m"
alias gp="git push"
alias gpl="git pull"
alias gac="ga && gc"
alias gap="ga && gc 'ci: commit' && gp"
alias gl="git log --graph --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%an%C(reset)%C(bold yellow)%d%C(reset) %C(dim white)- %s%C(reset)' --all"
alias ls="exa --long --classify --icons --git --group-directories-first --color=always"
alias sl="ls"
alias bat="bat --color=always"
alias nivm="nvim"
alias n="nvim"
alias py="python3"
alias k="kubectl"
alias youtube-dl='python3 /usr/local/bin/youtube-dl'
alias pip=/usr/bin/pip3
alias mkdir="mkdir -p"
alias path='echo $PATH | tr -s ":" "\n"'
alias lcc='echo -e "\e[1;32mfix:\e[0m a commit that fixes a bug."; echo -e "\e[1;36mfeat:\e[0m a commit that adds new functionality."; echo -e "\e[1;33mdocs:\e[0m a commit that adds or improves documentation."; echo -e "\e[1;35mtest:\e[0m a commit that adds unit tests."; echo -e "\e[1;31mperf:\e[0m a commit that improves performance, without functional changes."; echo -e "\e[1;34mchore:\e[0m a catch-all type for any other commits."'
alias notes="nvim ~/git/notes/vault"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# Load Angular CLI autocompletion.
source <(ng completion script)
