ZSH_THEME="agnoster"
DISABLE_AUTO_UPDATE="true"
export ZSH="/usr/share/oh-my-zsh"
source /usr/share/oh-my-zsh/oh-my-zsh.sh

#######################################
alias gity='/usr/bin/git --git-dir=$HOME/Config-Files/ --work-tree=$HOME'
#=========================================================
# Plugins
plugins=(

        extract
        fancy-ctrl-z
        systemd
        archlinux
        git
        globalias
        magic-enter

        web-search
        z

        zsh-navigation-tools)
###########################

alias  polproxy='export http_proxy="http://127.0.0.1:8118/"'

################################

# Aliases
alias clc="clear"
alias cls="clear"
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
alias psg="ps -aux |grep"
alias ipe='curl ipinfo.io/ip'
alias hs='history | grep'

###alias mkcd='foo(){ mkdir -p "$1"; cd "$1" }; foo '
 ########Date and Time Aliases
alias d='date +%F'
alias now='date +"%T"'
alias nowtime=now
alias nowdate='date +"%m-%d-%Y"'

##############Pacman First section#############

alias pacai="pacaur -S"
alias pacas="pacaur -Ss"
alias paci="sudo pacman -S"
alias pacq="pacman -Qi"
alias pacr="sudo pacman -R"
alias pacs="pacman -Ss"
alias pacu="sudo pacman -Syu"
###########################

alias q="exit"
alias rm="rm -irv"

####################Systemctl & Services Section########

alias sysd="sudo systemctl disable"
alias syse="sudo systemctl enable"
alias sysr="sudo systemctl restart"
alias syss="systemctl status"
alias systa="sudo systemctl start"
alias systo="sudo systemctl stop"
################Tor######################
alias torid="pidof tor | xargs sudo kill -HUP"

################## Yay For Aur####################
alias yayi="yay -S"
alias yayu="yay -Syu"

# Youtube-Dl

alias ytdl="youtube-dl"

#====================================
alias su="su -"
#####################################

############ <<<<<<<<<<Pulse Audio >>>>>>>>>>>>############
alias pstop='pulseaudio -k'
alias pstart='pulseaudio --start'
alias pxstart='start-pulseaudio-x11'
alias prun='ps aux | grep pulse'
alias ptempr='rm -rf /tmp/pulse* ~/.pulse*'
alias ppubck='pax11publish -d'
alias ppubr='pax11publish -r'
#==============================
alias suno='sudo nano'
###############################
#Session permissions
alias sp='loginctl show-session $XDG_SESSION_ID'
#
########====Time Synchronize==========
alias timesynch='sudo ntpd -qg'
alias time2hard='sudo hwclock --systohc'
#############################
alias service="sudo systemctl"
###############################
 alias psc='ps xawf -eo pid,user,cgroup,args'
#####################################################
###############Pacman Section 2 ########################
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
# Aria2 Section:
# Run Aria2 and download links at the latest speed in the Download directory.
# $ sudo apt install aria2
alias ariadl='aria2c -c -x16 -s16 -k1M --max-download-limit=1M -d ~/Downloads'
alias ariaunlimit='aria2c -c -x16 -s16 -k1M -d ~/Downloads'

# Download from the contents of the file.
# It will be useful for when the links are too much.
# note: Enter the address you want instead of the "$LINK_ARIA_PATH" variable.
# Or generate a variable with the address you want.
alias arialink='ariadl -j1 -i "$LINK_ARIA_PATH"'

# Download with proxy and shutting off the proxy after download.
# $ sudo apt install privoxy
ariat (){
    export http_proxy="http://127.0.0.1:8118"
    export https_proxy="http://127.0.0.1:8118"
    ariadl "$@"
    unset http_proxy https_proxy
}
####################################
# Fun Command Section:
# Get the weather in the terminal. $CITY: is your city.
# note: Enter the city you want instead of the "$CITY" variable.
# Or generate a variable with the address you want.
# $ sudo apt install curl
weather (){
    clear
    curl wttr.in/"$CITY" 2> /dev/null | head -7
    echo ""
}

# Clean view for screenfetch application.
# This program displays software and hardware specifications.
# $ sudo apt install screenfetch
SCFCH (){
    clear
    screenfetch
}

# Use the screenfetch app to display Ram usage.
# $ sudo apt install screenfetch
alias memory='screenfetch | grep RAM | sed -e s/RAM/:RAM/ | cut -f4-10 -d:'

# Get IPs with the "dig" program.
# $ sudo apt install dnsutils
alias myip='dig +short myip.opendns.com @resolver1.opendns.com'

# Get IPs with the "w3m" program. w3m is a text browser.
# $ sudo apt install w3m
#alias myip="w3m 'https://duckduckgo.com/?q=ip&ia=answer' \
#    | grep ^Your | cut -f5 -d' '" (not currently used)

# Call the "SCFCH" function in the above lines.
# This program displays software and hardware specifications.
# $ sudo apt install screenfetch
alias screenfetch='SCFCH'

# A tool to send a text to a "PasteBin" site.
# $ sudo apt install pastebinit
alias pbit="pastebinit -a ' ' -b paste.ubuntu.com"


# Shell Command Section:
# Function to optimize "cd".
# First, it checks for the correct execution of the command,
# And then "ls" in the existing directory.
CDLS (){
    cd "$@" || return
    STATUS_CD="$?"
    if [[ "$STATUS_CD" == "0" ]];then
        ls
    fi
}

# A function to show 10 most used commands on the user's operating system.
# $ sudo apt install mawk
checkhistory (){
    ITEMS="$1"
    if [[ -z "$ITEMS" ]];then
        ITEMS="10"
    fi
    echo -e "\nAll Commands ($ITEMS items):"
    history | awk '{print $2}' | sort | uniq -c | sort -rn | head -$ITEMS
    echo -e "\nSudo Commands ($ITEMS items):"
    history | grep sudo | awk '{print $3}' | sort | uniq -c | sort -rn \
        | head -$ITEMS
    echo
}

# A command to empty the cache for RAM.
clearcache (){
    sync
    echo "3" | sudo tee /proc/sys/vm/drop_caches > /dev/null 2>&1
}

# A command to empty the cache in the swap.
# With mount and unmount "Swap".
clearswap (){
    sync
    sudo swapoff -a
    sleep 2s
    sudo swapon -a
}

# Get all duration of media in directory.
# $ sudo apt install mediainfo mawk
mtime (){
    find "$@" -type f -exec mediainfo --Inform="General;%Duration%" {} \; \
        2>/dev/null | awk '{s+=$1/1000} END {h=s/3600; s=s%3600; printf \
        "%.2d:%.2d\n", int(h), int(s/60)}'
}

# Show Picture without stderr. by Gwenview (KDE).
# $ sudo apt install gwenview
photoshow (){
    gwenview "$@" 2> /dev/null
}

# A tool to burn ISO to an optical disc.
# With optimal speed and disk removal after the completion of the process.
# $ sudo apt install wodim
alias burn='wodim -eject speed=0 dev=/dev/sr0 -v -tao -data'

# Call the function in the above lines.
# Function to optimize "cd".
alias cd='CDLS'

# Create ISO filesystem.
# For Example: $ ciso foo.iso foo
# $ sudo apt install genisoimage
alias ciso='genisoimage -r -J -o'

# "cp" command with verbose and interactive options.
alias cp='cp -iv'

# "rm" command with verbose and interactive options.
alias rm='rm -iv'

# "mv" command with verbose and interactive options.
alias mv='mv -iv'

# "ls" commnad with recursive option.
alias lsR='ls -R'

# "ls" command with longlist, time, reverse and human_readable options.
alias lss='ls -ltrh'

# "ls" command with all (show dotfiles) option.
alias la='ls -a'

# like "lss" with all (show dotfiles) option.
alias lsa='ls -altrh'

# "ls" command with one file per line option.
alias ls1='ls -1'

# "pydf" the tool displays the file system space usage.
# $ sudo apt install pydf
alias df='pydf | grep -v "snap"'

# Comparison tool between two files.
# $ sudo apt install colordiff
alias diff='colordiff'

# Show Hardware Info.
# $ sudo apt install inxi
alias inxi='inxi -Fx'

# Show System (CPU and Mainboard) temprature.
alias sensors='watch -n 1 sensors'

# An application to display the status of programs such as cp, mv, tar etc.
# $ sudo apt install progress
alias progress='watch -n1 progress -q'

# Create Tar Archive with xz format.
alias tarc='tar cvfJ'

# Create Tar Archive with gz format.
alias targ='tar cvfj'

# Extract Tar Archives.
alias tarx='tar xvf'
