alias what="pwd && ls -la"
alias waht="pwd && ls -la"
alias cache='sudo killall -HUP mDNSResponder'
alias ping='ping -c 4'

# Set pathing for all the embedded items that come with ChefDK
# so I don't have to preface all commands with 'chef exec'.

eval "$(chef shell-init bash)"

# Setup 'thefuck' cmd line tool

eval $(thefuck --alias)

# bash prompt
                                                                                          
source ~/.git-completion.bash                                                             
source ~/.git-prompt.bash
                                                                                          
PS1="$COLOR_WHITE\u@\h:\w "
PS1+="\[\$(git_color)\]"        # colors git status                                       
PS1+="\$(git_branch)"           # prints current branch
PS1+="\[$COLOR_YELLOW\]\$\[$COLOR_RESET\] "   # '#' for root, else '$'                    
export PS1

# exports
export EDITOR=vi
export VAGRANT_DEFAULT_PROVIDER=virtualbox
