



export QT_QPA_PLATFORMTHEME="qt5ct"

# check for interactive
[[ $- = *i* ]] || return
alias bat_status='upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep  -E "state|to\ full|percentage|time to empty"'

##########################################################

alias today="date '+%m/%d/%y'"
alias bye="exit" #Users can type "bye" to exit a terminal.

alias BYE="exit" #BASH is case-sensitive, so "bye" is different from "BYE"

alias Exit="exit" #If a user has a bad habit of capitalizing the first letter of commands, this alias will handle that issue

alias EXIT="exit" #This alias helps users that tend to leave caps-lock on.

alias clr="clear" #This is a shortcut for "clear"

alias clsh="clear; history -c; echo \"\" > ~/.bash_history; exit" #This alias command will clear the terminal, delete the history, and exit. The backslashes protect the quotes that are within the aliases coding.

alias del="rm" #Users that are accustomed to using DOS will benefit from an alias that mimics DOS.

alias delete="rm" #This alias allows the user to use a easier-to-remember command to remove files.

alias copy="cp" #This alias also allows a user to use a command that is not as abstract.

alias firefix="firefox" #Users that misspell commands often will benefit from this idea.

alias kthxbye="exit" #This command mimics LOLCODE's exit command. Some users may find it helpful to use commands from other languages.

alias zed="sed" #This command helps with those spelling errors.

alias ...="cd ../.." #This shortcut can save users time. The alias is three key-presses while the original requires eight.

alias neobzr="bzr push lp:neobot" #Because I am a regular user of Bazaar and Launchpad, I use an alias to push my changes. Other Bazaar/Launchpad users can use this alias as a template for their projects. GIT, CVS, and Mercurial users can use this idea as inspiration for their version control systems.

alias sendbeta="bzr push lp:novabot-xaiml; bzr push lp:novabot-xaiml" #To push many projects at once, add each push command separated with a semicolon.

alias addppa="sudo add-apt-repository" #This alias can help save time and users that cannot remember the original command

alias bitcoin="bitcoin-qt" #Have problems remembering that last part of the command or find it pointless? Well, make another alias.

alias coffee="coffeescript" #Coffeescript users can save time by only typing "coffee". If you are still too lazy for that, try the next alias.

alias cs="coffeescript"

alias makepro="qmake *.pro" #Developers have many commonly typed commands. These types of commands could use some aliases.

alias editalias="(gedit ~/.bash_aliases &)" #Opening a file manager and changing the view settings to show hidden files and then finding the alias file can all be time-consuming. Guess what? Make another time saving alias. Now, users can quickly have the file open for modifications.
alias clc="clear"
alias install="sudo apt-get install" #The command need to install software is long, so make an alias for this as well to save time.

alias back="cd -" #To go back to the previous folder location, typing "back" will be quick to use and easy for users to remember.
################################################################

alias mkfl='echo "" >'
########################################################
alias chkgpuc='sudo cat /sys/kernel/debug/dri/0/radeon_pm_info'
alias chkgpustat='sudo cat /sys/class/drm/card0/device/power_dpm_state'
alias gpubatt='sudo echo "battery" > /sys/class/drm/card0/device/power_dpm_state'
alias gpubaln='sudo echo "balanced" > /sys/class/drm/card0/device/power_dpm_state'
alias gpuperf='sudo echo "performance" > /sys/class/drm/card0/device/power_dpm_state'
########################################################


# bash options ------------------------------------
set -o vi                   # Vi mode
set -o noclobber            # do not overwrite files
shopt -s autocd             # change to named directory
shopt -s cdable_vars        # if cd arg is not valid, assumes its a var defining a dir
shopt -s cdspell            # autocorrects cd misspellings
shopt -s checkwinsize       # update the value of LINES and COLUMNS after each command if altered
shopt -s cmdhist            # save multi-line commands in history as single line
shopt -s histappend         # do not overwrite history
shopt -s dotglob            # include dotfiles in pathname expansion
shopt -s expand_aliases     # expand aliases
shopt -s extglob            # enable extended pattern-matching features
shopt -s globstar           # recursive globbing…
shopt -s progcomp           # programmable completion
shopt -s hostcomplete       # attempt hostname expansion when @ is at the beginning of a word
shopt -s nocaseglob         # pathname expansion will be treated as case-insensitive


PROMPT_COMMAND="echo ===================================== "



set_prompt_style () {
    if [ -n "$SSH_CLIENT" ]; then
        PS1="┌─[\[\e[0;34m\]\h\[\e[0m\] \[\e[1;33m\]\w:\[\e[0m\] \[\e[1;31m\]«SSH»\[\e[0m\]]\n└─╼ "
    else
        PS1="┌─[\[\e[34m\]\h\[\e[0m\] \[\e[32m\]\w\[\e[0m\]]\n└─╼ "
    fi
}

set_prompt_style

# set history variables 
unset HISTFILESIZE
HISTSIZE="10000"
HISTCONTROL=ignoreboth:erasedups
# share history across all terminals
PROMPT_COMMAND="history -a; history -c; history -r"
export HISTSIZE PROMPT_COMMAND

# command not found
source /usr/share/doc/pkgfile/command-not-found.bash

# visual bell
set bell-style visible
# colour coreutils
eval $(dircolors -b ~/.dir_colors)
#export GREP_COLOR="1;31"
#alias grep="grep --color=auto"
#alias ls="ls --color=auto"

# ruby version management
#if [[ -e /usr/share/chruby ]]; then
#    source /usr/share/chruby/{chruby,auto}.sh
#   chruby $(<$HOME/.config/ruby-version)
#fi

######## Aliases ########

#The 'ls' family
# --------------------------
alias ll="ls -l --group-directories-first"
alias ls="ls -h --color"   # add colors for filetype recognition
alias la="ls -a"            # show hidden files
alias lx="ls -xb"           # sort by extension
alias lk="ls -lSr"          # sort by size, biggest last
alias lc="ls -ltcr"         # sort by and show change time, most recent last
alias lu="ls -ltur"         # sort by and show access time, most recent last
alias lt="ls -ltr"          # sort by date, most recent last
alias lm="ls -al |more"     # pipe through 'more'
alias lr="ls -lR"           # recursive ls
alias lsr="tree -Csu"       # nice alternative to 'recursive ls'


# General ------------------
alias less="less -FX"
#alias sraw="sr archwiki"
alias exit="clear; exit"
alias wifi="wicd-curses"
alias cdp="mplayer cdda://"
alias updates="checkupdates"
#alias blog="cd ~/VCS/octopress"
#alias tmux="tmux -f ~/.tmux/conf"
#alias 200="ssh 200 -t tmux a -d"
#alias sent="ssh -t cent ssh -t 200"
alias dush="du -sm *|sort -n|tail"
#alias fire="sudo ufw status verbose"
alias pong="ping -c 3 www.google.com"
#alias socks="ssh -D 8080 -f -C -q -N 200"
alias vime="vim -u $HOME/.vim/vimencrypt -x"
alias nocomment='egrep -v "^[ \t]*#|^[ \t]*$"'
#alias pi="ssh pi -t 'LANG=en_NZ.utf-8 tmux a -d'"
alias irc="rm -f $HOME/.irssi/saved_colors && irssi"
alias rss="newsbeuter -C $XDG_CONFIG_HOME/newsbeuter/config"
#alias backmusic="rsync -azPv --exclude=Juno* Music /media/Apollo"
#alias postup="rsync -azPv $HOME/VCS/octopress/source/_posts/ $HOME/Sync/Code/octopress/_posts/"
#alias ttytter="Scripts/ttytter.pl -keyf=$HOME/.config/ttytter/key -rc=$HOME/.config/ttytter/jwr"
### Pacman ###
# bash completion

complete -cf pacman

# update
alias pacup="sudo pacman -Syu"

# Remove orphans
alias orphans="pacman -Qtdq"

# sudo pacman backup packages to Dropbox
alias pacback='pacman -Qqe | grep -v "$(pacman -Qmq)" > ~/Dropbox/pklist.txt'

# check the log
paclog() { tail -n"$1" /var/log/pacman.log ;}
unsigned() { expac -S '%r %n %g'|awk '$3=="(null)" {print $1 "/" $2}' > unsigned.packages ; }

# Mounts
alias sentinel="sudo mount.nfs4 192.168.1.1:/ /media/Sentinel"

####### Functions ########

# Extract Files
extract() {
  if [ -f $1 ] ; then
      case $1 in
          *.tar.bz2)   tar xvjf $1    ;;
          *.tar.gz)    tar xvzf $1    ;;
          *.tar.xz)    tar xvJf $1    ;;
          *.bz2)       bunzip2 $1     ;;
          *.rar)       unrar x $1     ;;
          *.gz)        gunzip $1      ;;
          *.tar)       tar xvf $1     ;;
          *.tbz2)      tar xvjf $1    ;;
          *.tgz)       tar xvzf $1    ;;
          *.zip)       unzip $1       ;;
          *.Z)         uncompress $1  ;;
          *.7z)        7z x $1        ;;
          *.xz)        unxz $1        ;;
          *.exe)       cabextract $1  ;;
          *)           echo "\`$1': unrecognized file compression" ;;
      esac
  else
      echo "\`$1' is not a valid file"
  fi
}

# images
sx() { sxiv -tq "$@" 2>/dev/null ;}

urlcheck() { sudo hostsblock-urlcheck "$1" ;}

# ssh tmux connections
#shux() { ssh "$1" -t LANG=en_NZ.utf-8 tmux a -d ;}

# processes
pids() { ps aux | grep $1 ;}

# Motherboard temp
temp() { awk '/^MB/ { sub(/+/, ""); print $3}' <(sensors) ;}

# paste to sprunge
#sprung() { curl -F "sprunge=<-" http://sprunge.us <"$1" ;}

# list aur updates
aurup() { awk '{print $2}' </tmp/aurupdates* ;}

# Follow copied and moved files to destination directory
cpf() { cp "$@" && goto "$_"; }
mvf() { mv "$@" && goto "$_"; }
goto() { [ -d "$1" ] && cd "$1" || cd "$(dirname "$1")"; }

# External IP
wmip(){ printf "External IP: %s\n" $(curl -s  http://ifconfig.me/) ;}

# Health of RAID array
#raid() { awk '/^md/ {printf "%s: ", $1}; /blocks/ {print $NF}' </proc/mdstat ;}

# SSH Keys 
#keys() { eval $(ssh-agent) && ssh-add ~/.ssh/{bb,id_*sa} ;}

# surfraw ML
surf() { awk '/surf/ {printf "%s", $3}' <$HOME/Dropbox/Documents/notes/misc | xsel -b ;}

# surfraw git
srgit() { git "$1" ssh://jasonwryan-guest@git.debian.org/git/surfraw/surfraw ; }

# attach tmux to existing session
mux() { [[ -z "$TMUX" ]] && { tmux attach -d || tmux -f $HOME/.tmux/conf new -s secured ;} }

# play videos
ytplay() { mplayer $(youtube-dl -g "$@") &>/dev/null ;}


# International timezone
zone() { TZ="$1"/"$2" date; }
zones() { ls /usr/share/zoneinfo/"$1" ;}

# Nice mount output
#nmount() { (echo "DEVICE PATH TYPE FLAGS" && mount | awk '$2=$4="";1') | column -t; }

# Print man pages 
manp() { man -t "$@" | lpr -pPrinter; }

# Create pdf of man page - requires ghostscript and mimeinfo
manpdf() { man -t "$@" | ps2pdf - /tmp/manpdf_$1.pdf && xdg-open /tmp/manpdf_$1.pdf ;}


### Simple notes ------------------------------------------------
n() {
  local arg files=()
  for arg; do 
      files+=( $HOME/".notes/$arg" )
  done
  ${EDITOR:-vi} "${files[@]}";
}

nls() {
  tree -CR --noreport $HOME/.notes | awk '{
    if (NF==1) print $1
    else if (NF==2) print $2
    else if (NF==3) printf "  %s\n", $3
  }'
}

# TAB completion for notes
_notes() {
  local files=($HOME/.notes/**/"$2"*)
  [[ -e ${files[0]} ]] && COMPREPLY=( "${files[@]##$HOME/.notes/}" )
}
complete -o default -F _notes n

### linux console colors (dark) ###

if [ "$TERM" = "linux" ]; then
    echo -en "\e]P0000000" #black
    echo -en "\e]P85e5e5e" #darkgrey
    echo -en "\e]P18a2f58" #darkred
    echo -en "\e]P9cf4f88" #red
    echo -en "\e]P2287373" #darkgreen
    echo -en "\e]PA53a6a6" #green
    echo -en "\e]P3914e89" #darkyellow
    echo -en "\e]PBbf85cc" #yellow
    echo -en "\e]P4395573" #darkblue
    echo -en "\e]PC4779b3" #blue
    echo -en "\e]P55e468c" #darkmagenta
    echo -en "\e]PD7f62b3" #magenta
    echo -en "\e]P62b7694" #darkcyan
    echo -en "\e]PE47959e" #cyan
    echo -en "\e]P7899ca1" #lightgrey
    echo -en "\e]PFc0c0c0" #white
    clear # bring us back to default input colours
fi



#PS1='\[\e[0;32m\]\u@\h\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[1;37m\]'
set show-all-if-ambiguous on

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.

#all conky Runing on system

 alias conkyrun='ps aux | grep -v -e "grep" -e "bash" | grep "conky"'

 # view c grous that systemd make for proccess in tradetional way ps command :-) = this systemd command = systemd-cgls
 alias psc='ps xawf -eo pid,user,cgroup,args'
# Pacman 
 #alias pacupg='sudo pacman -Syu'        # Synchronize with repositories and then upgrade packages that are out of date on the local system.
 alias paci='sudo pacman -S'           # Install specific package(s) from the repositories
 alias pacins='sudo pacman -U'          # Install specific package not from the repositories but from a file 
 alias pacr='sudo pacman -R'           # Remove the specified package(s), retaining its configuration(s) and required dependencies
 alias pacrem='sudo pacman -Rns'        # Remove the specified package(s), its configuration(s) and unneeded dependencies
 alias pacrep='pacman -Si'              # Display information about a given package in the repositories
 alias pacreps='pacman -Ss'             # Search for package(s) in the repositories
 alias pacloc='pacman -Qi'              # Display information about a given package in the local database
 alias paclocs='pacman -Qs'             # Search for package(s) in the local database
 alias pacu='sudo pacman -U'

 # Additional pacman alias examples
 alias pacu='sudo pacman -Sy '     # Update and refresh the local package and ABS databases against repositories
 alias pacinsd='sudo pacman -S --asdeps'        # Install given package(s) as dependencies of another package
 alias pacmir='sudo pacman -Syy'                # Force refresh of all package lists after updating /etc/pacman.d/mirrorlist
  #alias pacache= 'sudo paccache -rk1'   #Clean pacman chache except one past version


alias ssc='sudo systemctl'

#Listing all packages that nothing else depends on

#whith script OR expac

#$expac "%n %N" -Q $(expac "%n %G" | grep -v ' base') | awk '$2 == "" {print $1}'


## ls ## {{{
#alias ls='ls -hF --color=auto'
#alias lr='ls -R'                    # recursive ls
#alias ll='ls -l'
#alias la='ll -A'
#alias lx='ll -BX'                   # sort by extension
#alias lz='ll -rS'                   # sort by size
#alias lt='ll -rt'                   # sort by date
#alias lm='la | more'
# }}}

# Privileged access
if [ $UID -ne 0 ]; then
    alias sudo='sudo '
    alias scat='sudo cat'
    alias svim='sudoedit'
    alias root='sudo -s'
  #  alias reboot='sudo systemctl reboot'
  #  alias poweroff='sudo systemctl poweroff'
   # alias update='sudo pacman -Su'
    alias netctl='sudo netctl'
fi

## New commands ## {{{
alias da='date "+%A, %B %d, %Y [%T]"'
alias du1='du --max-depth=1'
alias hist='history | grep'         # requires an argument
alias openports='ss --all --numeric --processes --ipv4 --ipv6'
alias pgg='ps -Af | grep'           # requires an argument
alias ..='cd ..'
# }}}

## Modified commands ## {{{
alias diff='colordiff'              # requires colordiff package
alias grep='grep --color=auto'
alias more='less'
alias df='df -h'
alias du='du -c -h'
alias mkdir='mkdir -p -v'
alias nano='nano -w'
#alias ping='ping -c '
alias dmesg='dmesg -HL'
# }}}



## Make Bash error tolerant ## {{{
alias :q=' exit'
alias :Q=' exit'
alias :x=' exit'
alias cd..='cd ..'
# }}}




#Auto "cd" when entering just a path
shopt -s autocd

#################


#GPU Controlling
alias gbl='su - echo battery > /sys/class/drm/card0/device/power_dpm_state && echo low > /sys/class/drm/card0/device/power_dpm_force_performance_level'


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
#export LIBVA_DRIVER_NAME=vdpau
#export VDPAU_DRIVER=r600

#export PATH=$HOME/xdman:$PATH
alias adb='/opt/android-sdk/platform-tools/adb' 

function aa_mod_parameters () 
{ 
    N=/dev/null;
    C=`tput op` O=$(echo -en "\n`tput setaf 2`>>> `tput op`");
    for mod in $(cat /proc/modules|cut -d" " -f1);
    do
        md=/sys/module/$mod/parameters;
        [[ ! -d $md ]] && continue;
        m=$mod;
        d=`modinfo -d $m 2>$N | tr "\n" "\t"`;
        echo -en "$O$m$C";
        [[ ${#d} -gt 0 ]] && echo -n " - $d";
        echo;
        for mc in $(cd $md; echo *);
        do
            de=`modinfo -p $mod 2>$N | grep ^$mc 2>$N|sed "s/^$mc=//" 2>$N`;
            echo -en "\t$mc=`cat $md/$mc 2>$N`";
            [[ ${#de} -gt 1 ]] && echo -en " - $de";
            echo;
        done;
    done
}



[[ "${PROMPT_COMMAND}" ]] && PROMPT_COMMAND="$PROMPT_COMMAND;history -a" || PROMPT_COMMAND="history -a"

source /usr/share/git/completion/git-completion.bash
alias wifii='sudo systemctl start network-wireless\@wls1.service'

alias timesynch='sudo ntpd -qg'
alias time2hard='sudo hwclock --systohc'
alias pacup1='sudo pacman -Syu --ignore linux-ck-nehalem --ignore linux-ck-nehalem-headers'
alias pacup2='sudo pacman -Syu --ignore linux-ck-nehalem --ignore linux-ck-nehalem-headers --ignore linux --ignore linux-headers'
#/usr/bin/archey3


PATH=$PATH:$HOME/Scripts:/usr/lib/surfraw/:$HOME/xdman/
PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
export GEM_HOME=$(ruby -e 'print Gem.user_dir')


export PATH
alias polproxy='export http_proxy="http://127.0.0.1:8123/"'
export SYSTEMD_LESS=FRXMK journalctl

export MSF_DATABASE_CONFIG=/usr/share/metasploit/config/database.yml
#######source /usr/share/chruby/chruby.sh
alias down='/usr/bin/aria2c --allow-overwrite=true -c --file-allocation=falloc --log-level=error -m 16 -x 16 --max-file-not-found=5 -k 1M --no-conf --remote-time=true --summary-interval=60 -t 5 -d /home/mojtaba/Downloads'
#alias msfconsole="msfconsole --quiet -x \"db_connect msfdbusr@msf\""




alias service="sudo systemctl"



alias mkfl='echo "" >'

kp () {
  ps aux | grep $1 > /dev/null
  mypid=$(pidof $1)
  if [ "$mypid" != "" ]; then
    kill -9 $(pidof $1)
    if [[ "$?" == "0" ]]; then
      echo "PID $mypid ($1) killed."
    fi
  else
    echo "None killed."
  fi
  return;
}


psa () {
  ps aux | grep $1
}


alias rmf='rm -rf'




