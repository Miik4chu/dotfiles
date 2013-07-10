# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="sorin"

# Example aliases
alias lsnew=" ls -al --time-style=+%D | grep `date +%D` "
alias aptget="sudo apt-get"
alias zconf="vi ~/.zshrc"
alias gls="git log --pretty=format:\"%C(yellow)%h%Cred%d\\ %Creset%s%Cblue\\ [%c
n]\" --decorate"
alias gll="git log --pretty=format:\"%C(yellow)%h%Cred%d\\ %Creset%s%Cblue\\ [%c
n]\" --decorate --numstat"
alias glst="git log --pretty=format:\"%C(yellow)%h\\ %ad%Cred%d\\ %Creset%s%Cblu
e\\ [%cn\" --decorate --date=short"
alias j="jobs"
alias hs='history | grep --color=auto'
alias h="history"
alias update='sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade && sudo apt-get clean'
alias c='clear'
alias sshmichael="ssh miik4chu@buimichael.com -p 1990"

# local alias
alias bees="~/bin/cloudbees-sdk-1.5.0/bees"
alias screenfetch="~/bin/screenfetch/screenfetch-dev"

function mcd() {
  mkdir -p "$1" && cd "$1";
}

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git extract)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/home/miik4chu/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:$HOME/bin/PhpStorm-129.291/bin/:

tunnel(){
if [[ "$1" = "start" ]]; then
	nohup ssh -i ~/.ssh/id_rsa -c blowfish -nNT -C -D 9999 root@lapetiteaffaire.fr > ~/foo.out 2> ~/foo.err < /dev/null &
	echo "ssh started ..."
	echo "Tunnel launched!"
elif [[ "$1" = "stop" ]]; then
	echo "Tunnel dead!"
fi
}
