ZSH_THEME="agnoster"
export ZSH="/usr/share/oh-my-zsh"
source /usr/share/oh-my-zsh/oh-my-zsh.sh

#######################################
alias config='/usr/bin/git --git-dir=$HOME/Config-Files/ --work-tree=$HOME'
#=========================================================
# Plugins
plugins=(
     
        extract
        fancy-ctrl-z
        
        
        git
        globalias
        magic-enter
       
        web-search
        z
        
        zsh-navigation-tools)
###########################
export ZSH="/usr/share/oh-my-zsh"
source /usr/share/oh-my-zsh/oh-my-zsh.sh


################################

# Aliases
alias  clc="clear"
#alias cat="bat"
alias ccp="clipcopy"
alias cp="cp -iv"
alias cpa="clippaste"
alias diff="diff --color=auto"
alias exag="exa -ahlT -L=1  -s=extension --git --group-directories-first"
alias fdir='find . -type d -name'
alias ffil='find . -type f -name'
alias grep="grep --color=auto"
alias jupn="jupyter notebook"
alias la="ls -AXb --group-directories-first --sort=extension"
alias ln="ln -sv"
alias lsda="lsd -A --group-dirs first --classify"
alias lsdo="lsd -A --group-dirs first --classify --recursive --depth=2"
alias mv="mv -iv"
alias ncdu="ncdu --color=dark -x"
alias open="xdg-open"
alias pacai="pacaur -S"
alias pacas="pacaur -Ss"
alias paci="sudo pacman -S"
alias pacq="pacman -Qi"
alias pacr="sudo pacman -R"
alias pacs="pacman -Ss"
alias pacu="sudo pacman -Syu"

alias q="exit"
alias rm="rm -irv"
alias sysd="sudo systemctl disable"
alias syse="sudo systemctl enable"
alias sysr="sudo systemctl restart"
alias syss="systemctl status"
alias systa="sudo systemctl start"
alias systo="sudo systemctl stop"

alias yayi="yay -S"
alias yayu="yay -Syu"
alias ytdl="youtube-dl"

#====================================
alias su="su -"

#   Pulse Audio #
alias pstop='pulseaudio -k' 
alias pstart='pulseaudio --start' 
alias pxstart='start-pulseaudio-x11' 
alias prun='ps aux | grep pulse' 
alias ptempr='rm -rf /tmp/pulse* ~/.pulse*' 
alias ppubck='pax11publish -d' 
alias ppubr='pax11publish -r' 
#==============================
alias suno='sudo nano' 

#Session permissions
alias sp='loginctl show-session $XDG_SESSION_ID'
#
#=========================
alias timesynch='sudo ntpd -qg'
alias time2hard='sudo hwclock --systohc'
#############################
alias service="sudo systemctl"
###############################
 alias psc='ps xawf -eo pid,user,cgroup,args'
# Pacman 
 #alias pacupg='sudo pacman -Syu'        # Synchronize with repositories and then upgrade packages that are out of date on the local system.
 alias pacin='sudo pacman -S'           # Install specific package(s) from the repositories
 alias pacins='sudo pacman -U'          # Install specific package not from the repositories but from a file 
 alias pacre='sudo pacman -R'           # Remove the specified package(s), retaining its configuration(s) and required dependencies
 alias pacrem='sudo pacman -Rns'        # Remove the specified package(s), its configuration(s) and unneeded dependencies
 alias pacrep='pacman -Si'              # Display information about a given package in the repositories
 alias pacreps='pacman -Ss'             # Search for package(s) in the repositories
 alias pacloc='pacman -Qi'              # Display information about a given package in the local database
 alias paclocs='pacman -Qs'             # Search for package(s) in the local database
 alias pacu='sudo pacman -U'

 # Additional pacman alias examples
 alias pacupd='sudo pacman -Sy && sudo abs'     # Update and refresh the local package and ABS databases against repositories
 alias pacinsd='sudo pacman -S --asdeps'        # Install given package(s) as dependencies of another package
 alias pacmir='sudo pacman -Syy'                # Force refresh of all package lists after updating /etc/pacman.d/mirrorlist
#############################################################################

