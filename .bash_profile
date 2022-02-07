# alias
alias what="pwd && ls -a"
alias waht="pwd && ls -a"
alias clar="clear"
alias claer="clear"
alias cache='sudo killall -HUP mDNSResponder'
alias ping='ping -c 4'
alias login-shared='saml2aws login --force --skip-prompt --idp-account="impinj-shared"'
alias login-sec='saml2aws login --force --skip-prompt --idp-account="impinj-sec"'
alias login-monza='saml2aws login --force --skip-prompt --idp-account="impinj-monza"'
alias login-master='saml2aws login --force --skip-prompt --idp-account="impinj-master"'
alias login-keygen-nonprod='saml2aws login --force --skip-prompt --idp-account="impinj-keygen-nonprod"'
alias login-platform-systems='saml2aws login --force --skip-prompt --idp-account="impinj-platform-systems"'
alias login-octane='saml2aws login --force --skip-prompt --idp-account="impinj-octane"'
alias login-factory-nonprod='saml2aws login --force --skip-prompt --idp-account="impinj-factory-nonprod"'

# Set pathing for all the embedded items that come with ChefDK
# so I don't have to preface all commands with 'chef exec'.
# eval "$(chef shell-init bash)"

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
