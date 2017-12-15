alias what="pwd && ls -la"

# Set pathing for all the embedded items that come with ChefDK
# so I don't have to preface all commands with 'chef exec'.

eval "$(chef shell-init bash)"
