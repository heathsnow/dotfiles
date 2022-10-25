# alias
alias what="pwd && ls -a"
alias waht="pwd && ls -a"
alias clar="clear"
alias claer="clear"
alias cache='sudo killall -HUP mDNSResponder'
alias ping='ping -c 4'
alias python=/usr/local/bin/python3

login-aws() {
  saml2aws login --force --skip-prompt --idp-account="$1"
  unset AWS_ACCESS_KEY_ID
  unset AWS_SECRET_ACCESS_KEY
  export AWS_PROFILE=$1
}

# Setup 'thefuck' cmd line tool
eval $(thefuck --alias)

# bash prompt
source ~/.git-completion.bash
source ~/.git-prompt.bash

# secret environment exports
source ~/.heath_profile

PS1="\[$COLOR_YELLOW\]\u@localhost:\[$COLOR_CYAN\]\w\[$COLOR_RESET\] "
PS1+="\[\$(git_color)\]"        # colors git status
PS1+="\$(git_branch)"           # prints current branch
PS1+="\[$COLOR_YELLOW\]\$\[$COLOR_RESET\] "   # '#' for root, else '$'
export PS1

export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# exports
export EDITOR=vi
export VAGRANT_DEFAULT_PROVIDER=vmware_fusion
export BASH_SILENCE_DEPRECATION_WARNING=1
# export GOPATH=$HOME/go
# export GOROOT="$(brew --prefix golang)/libexec"
# export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
export PATH="$PATH:/Users/hsnow/Library/Python/3.10/bin"
