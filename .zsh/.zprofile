
# export other directories to PATH
typeset -U path
path=($HOME/Scripts /usr/lib/surfraw $path[@})


emulate sh -c 'source /etc/profile'
