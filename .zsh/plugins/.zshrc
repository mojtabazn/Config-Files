#-------------------------------------------------
# file:     ~/.zshrc
# author:   jason ryan - http://jasonwryan.com/
# vim:fenc=utf-8:nu:ai:si:et:ts=4:sw=4:ft=zsh:
#-------------------------------------------------

autoload -U colors && colors
zmodload zsh/complist

# prompts
LPROMPT () {
PS1="┌─[%{$fg[cyan]%}%m%{$fg_bold[blue]%} %~ %{$fg_no_bold[yellow]%}%(0?..%?)%{$reset_color%}]
└─╼ "
}

# Show vi mode
function zle-line-init zle-keymap-select {
    RPS1="%{$fg[yellow]%}${${KEYMAP/vicmd/%B Command Mode %b}/(main|viins)/ }%{$reset_color%}"
    RPS2=$RPS1
    zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select

LPROMPT
PROMPT_EOL_MARK=" •"

# completions
# add custom completion scripts
fpath=(~/.zsh/completion $fpath) 
autoload -Uz compinit
compinit

zstyle ':completion:*' completer _complete _correct _approximate
zstyle ':completion:*' expand prefix suffix
zstyle ':completion:*' completer _expand_alias _complete _approximate
zstyle ':completion:*' menu select
zstyle ':completion:*' file-sort name
zstyle ':completion:*' ignore-parents pwd
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*:pacman:*' force-list always
zstyle ':completion:*:*:pacman:*' menu yes select
zstyle -e ':completion:*' hosts 'reply=(cent pi sent veles)'
zstyle :compinstall filename '$HOME/.zsh/.zshrc'


# history options
export HISTFILE="$ZDOTDIR/histfile"
export HISTSIZE=10000
export SAVEHIST=$((HISTSIZE/2))
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_SAVE_NO_DUPS
setopt HIST_VERIFY
setopt INC_APPEND_HISTORY
setopt EXTENDED_HISTORY

# edit history
autoload edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

setopt autocd extendedglob nomatch completealiases
setopt correct          # try to correct spelling
setopt no_correctall    # …only for commands, not filenames

# keybinds
bindkey -v
KEYTIMEOUT=1

# fix for cursor position
autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end

# prevent protected characters
zle -A kill-whole-line vi-kill-line
zle -A backward-kill-word vi-backward-kill-word
zle -A backward-delete-char vi-backward-delete-char

bindkey "^R" history-incremental-search-backward
bindkey "^[[A" history-beginning-search-backward-end
bindkey "^[[B" history-beginning-search-forward-end
bindkey "\e." insert-last-word
bindkey "\eq" quote-line
bindkey "\ek" backward-kill-line

# use the vi navigation keys in menu completion
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

# manual pages for current command
bindkey "^[h" run-help

# quoting URLs
autoload -U url-quote-magic
zstyle ':urlglobber' url-other-schema ftp git http https magnet
zstyle ':url-quote-magic:*' url-metas '*?[]^(|)~#='
zle -N self-insert url-quote-magic

# colour coreutils
export GREP_COLOR="1;31"
alias grep="grep --color=auto"
alias "ls=ls --color=auto"
# colors for ls
if [[ -f ~/.dir_colors ]]; then
    eval $(dircolors -b ~/.dir_colors)
fi

######## Aliases ########

#The 'ls' family
#---------------------------
alias ll="ls -l --group-directories-first"
alias ls="ls -h --color"    # add colors for filetype recognition
alias la="ls -A"            # show hidden files
alias lx="ls -xb"           # sort by extension
alias lk="ls -lSr"          # sort by size, biggest last
alias lc="ls -ltcr"         # sort by and show change time, most recent last
alias lu="ls -ltur"         # sort by and show access time, most recent last
alias lt="ls -ltr"          # sort by date, most recent last
alias lm="ls -Al |more"     # pipe through 'more'
alias lr="ls -lR"           # recursive ls
alias lsr="tree -Csu"       # nice alternative to 'recursive ls'

# General ------------------
alias rss="newsbeuter"
alias sraw="sr archwiki"
alias updates="checkupdates"
alias blog="cd ~/VCS/octopress"
alias tmux="tmux -f ~/.tmux/conf"
alias dush="du -sm *|sort -n|tail"
alias fire="sudo ufw status verbose"
alias pong="ping -c 3 www.google.com"
alias makeup="updpkgsums && makepkg -ci"
alias socks="ssh -D 8080 -f -C -q -N 200"
alias nocomment='egrep -v "^[ \t]*#|^[ \t]*$"'
alias irc="rm -f $HOME/.irssi/saved_colors && irssi"
alias ttytter="Scripts/ttytter.pl -keyf=$XDG_CONFIG_HOME/ttytter/key -rc=$XDG_CONFIG_HOME/ttytter/jwr"

######## Pacman ########
# update 
alias pacup="sudo pacman -Syu"

# Remove orphans
alias orphans="pacman -Qtdq"

# sudo pacman backup packages to Dropbox
alias pacback='pacman -Qqe | grep -v "$(pacman -Qmq)" > ~/Dropbox/Archer/pklist-new.txt'
#all conky Runing on system

 alias conkyrun='ps aux | grep -v -e "grep" -e "bash" | grep "conky"'

 # view c grous that systemd make for proccess in tradetional way ps command :-) = this systemd command = systemd-cgls
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



alias systemctls='sudo systemctl'




### Mounts ###
alias centurion="sudo mount.nfs 192.168.1.100:/home/jason /media/Centurion"
alias sentinel="sudo mount.nfs 192.168.1.200:/home/jason/Backups /media/Sentinel"

# to run bash functions
autoload bashcompinit
bashcompinit

# command not found hook
source "/usr/share/doc/pkgfile/command-not-found.zsh"

# source highlighting
source "$ZDOTDIR"/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)

# functions
if [[ -d "$ZDOTDIR" ]]; then
  for file in "$ZDOTDIR"/*.zsh; do
    source "$file"
  done
fi






alias wifii='sudo systemctl start network-wireless\@wls1.service'

alias timesynch='sudo ntpd -qg'
alias time2hard='sudo hwclock --systohc'
alias pacup1='sudo pacman -Syu --ignore linux-ck-nehalem --ignore linux-ck-nehalem-headers'
alias pacup2='sudo pacman -Syu --ignore linux-ck-nehalem --ignore linux-ck-nehalem-headers --ignore linux --ignore linux-headers'
/usr/bin/archey3
PATH=$PATH:$HOME/Scripts:/usr/lib/surfraw/:$HOME/xdman/

export PATH


PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
export PATH
alias polproxy='export http_proxy="http://127.0.0.1:8123/"'
export SYSTEMD_LESS=FRXMK journalctl
export GEM_HOME=$(ruby -e 'print Gem.user_dir')
export MSF_DATABASE_CONFIG=/usr/share/metasploit/config/database.yml



