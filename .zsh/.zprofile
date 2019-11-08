#-------------------------------------------------
# file:     ~/.zprofile
# author:   jason ryan - http://jasonwryan.com/
# vim:fenc=utf-8:nu:ai:si:et:ts=4:sw=4:ft=zsh:
#-------------------------------------------------

# export other directories to PATH
typeset -U path
path=($HOME/Scripts /usr/lib/surfraw $path[@})


emulate sh -c 'source /etc/profile'
