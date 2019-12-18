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

# Set pathing for all the embedded items that come with ChefDK
# so I don't have to preface all commands with 'chef exec'.
# eval "$(chef shell-init bash)"

# Setup 'thefuck' cmd line tool
eval $(thefuck --alias)

# bash prompt
source ~/.git-completion.bash
source ~/.git-prompt.bash

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
