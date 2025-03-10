# alias
alias what="pwd && ls -a"
alias waht="pwd && ls -a"
alias cat="/opt/homebrew/bin/bat"
alias clar="clear"
alias claer="clear"
alias cache='sudo killall -HUP mDNSResponder'
alias ping='ping -c 4'
alias python=/usr/local/bin/python3
alias login-ansible='aws ssm start-session --target  "`aws ec2 describe-instances --filter "Name=tag:Name,Values=${PWD##*/}" "Name=instance-state-name,Values=running" --query "Reservations[*].Instances[*].[InstanceId]" --output text`"'

login-aws() {
  saml2aws login --force --skip-prompt --idp-account="$1"
  unset AWS_ACCESS_KEY_ID
  unset AWS_SECRET_ACCESS_KEY
  export AWS_PROFILE=$1
}

login-sso() {
  aws sso login --profile $1
  unset AWS_ACCESS_KEY_ID
  unset AWS_SECRET_ACCESS_KEY
  export AWS_PROFILE=$1
}

login-azure() {
  az config set core.login_experience_v2=off
  az login
  export ARM_SUBSCRIPTION_ID=$(az account show | jq -r .id)
}

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

# https://www.granted.dev
alias assume=". assume"

