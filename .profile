# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# Set up an awesome prompt

# Stef's pretty prompt
#PS1="\n\e[2;35m[ \e[2;32m\d \t \e[2;35m| \e[2;33m\u\e[2;35m@\e[2;33m\h\e[m:\e[2;32m\w\e[m\e[2;35m ]\n\e[2;33m>> \e[1;37m"

# Simple prompt
#PS1='\[\033[31;1m\u\[\033[0m@\[\033[34;1m\h\[\033[0m [\t] \[\033[37m\w\[\033[0m/ > '

# Jason's prompt
#PS1="[\t \h:\w] "
PS1="[\e[2;31m\t\e[m \e[2;36m\u\e[m \e[2;32m\w\e[m]\n>> "

# Disable XOFF (ctrl+s) from Ruining Everything.
stty -ixon

# More user-friendly
#alias ll="ls -al --color=auto"
alias dirsize="du -sh"

alias emacs="emacs -rv"
alias lsd="ls -harlS"
alias rls="while true; do clear; rakelog summary; sleep 30; done"


# More user-friendly
alias ll="ls -alh --color=auto"
alias ty="cat"
alias tdir="ll -t -r"
alias lo="logout"
alias cls="clear"
alias tt2="set term/inquire"

# tmux
alias tmux="tmux -u"
alias tnew="tmux new -s"
alias tat="tmux a -t"

# Directory navigation
alias ..="cd .."
alias ..2="cd ../.."
alias ..3="cd ../../.."
alias ..4="cd ../../../.."
alias ..5="cd ../../../../.."
alias cd..='cd ..'

# To easily empty a file
alias empty='cat /dev/null >'


# To add date and time to your history
export HISTTIMEFORMAT="%d/%m/%y %T "
export GPG_TTY=$(tty)
