# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples
alias ll='ls -lh'
# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups
# ... and ignore same sucessive entries.
export HISTCONTROL=ignoreboth

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi
TERM=xterm-color
# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
xterm-color)
    PS1='${debian_chroot:+($debian_chroot)}\[\e[01;32m\]\u\[\e[01;31m\]@\[\e[01;33m\]\h\[\e[01;33m\]:\[\e[01;34m\]\W\[\e[00m\]\$ '
    ;;
*)
    #PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\W\$ '
    ;;
esac

# Comment in the above and uncomment this below for a color prompt
#PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PROMPT_COMMAND='echo -ne "\e[31;1m\e]0;${USER}@${HOSTNAME}: ${PWD/$HOME/~}\007"'
    ;;
*)
    ;;
esac

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

#if [ -f ~/.bash_aliases ]; then
#    . ~/.bash_aliases
#fi

# enable color support of ls and also add handy aliases
if [ "$TERM" != "dumb" ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
    #alias dir='ls --color=auto --format=vertical'
    #alias vdir='ls --color=auto --format=long'
fi

# some more ls aliases
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
alias ..="cd .."
alias ..2="cd ../.."
alias ..3="cd ../../.."
alias ..4="cd ../../../.."
alias ..5="cd ../../../../.."
# Always use vim for vi
alias vi='vim'
set -o vi
function mkdircd(){
    mkdir -p "$*" && cd "$*";
}
# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi
if [ -f ~/.git-completion.bash ]; then
   source ~/.git-completion.bash
fi
export JAVA_HOME=/usr/lib/jvm/java-1.5.0-sun-1.5.0.13/

PATH=/home/mustapha/workspace/adt-bundle-linux-x86_64-20140321/sdk/platform-tools
PATH=/opt/Freescale/KDS_2.0.0/eclipse/:$PATH

export PATH=$PATH:/home/mustapha/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/lib/jvm/java-1.5.0-sun-1.5.0.13/bin/

QMAKESPEC=/home/mustapha/ti-sdk-beagleboard-06.00.00.00/linux-devkit/arm-arago-linux-gnueabi/usr/share/qtopia/mkspecs/linux-g++;export QMAKESPEC; # ADDED BY INSTALLER - DO NOT EDIT OR DELETE THIS COMMENT - AB1C36D0-2B62-930A-B1CF-1B15CF69BE47 32C7B4A5-D9FD-0EF3-430C-9AA7D095BA77
