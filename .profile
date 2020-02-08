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

# get git branch
get_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# Set up an awesome prompt
#PS1="\n\e[2;35m[ \e[2;32m\d \t \e[2;35m| \e[2;33m\u\e[2;35m@\e[2;33m\h\e[m:\e[2;32m\w\e[m\e[2;35m ]\n\e[2;33m>> \e[1;37m"
PS1="[\e[2;31m\t\e[m \e[2;36m\u\e[m \e[2;32m\w\e[m]$(get_git_branch)\n>> "

# Disable XOFF (ctrl+s) from Ruining Everything.
#stty -ixon

# More user-friendly
#alias ll="ls -al --color=auto"
alias dirsize="du -sh"

alias emacs="emacs -rv"
alias lsd="ls -harlS"


# More user-friendly
alias ll="ls -alh --color=auto"
alias ty="cat"
alias tdir="ll -t -r"
alias lo="logout"
alias cls="clear"

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
export PATH=/home/ejayledesma/.yarn/bin:$PATH
