if [ -e /var/cfengine/classes/nextgen ]
then
    source /home/fonix/prd_progs/tools/engineering-login.sh
    source /home/fonix/prd_progs/tools/fdb_utils.sh
    source /home/fonix/prd_progs/tools/dbl/dbl_defs.sh
    source /home/fonix/prd_progs/tools/uniframe/common_defs.sh
else
    echo "*** This does not appear to be a NEXTGEN CLASS MACHINE, skipping NEXTGEN specific set-up ***"
fi

# Set up an awesome prompt

# Stef's pretty prompt
#PS1="\n\e[2;35m[ \e[2;32m\d \t \e[2;35m| \e[2;33m\u\e[2;35m@\e[2;33m\h\e[m:\e[2;32m\w\e[m\e[2;35m ]\n\e[2;33m>> \e[1;37m"

# Simple prompt
#PS1='\[\033[31;1m\u\[\033[0m@\[\033[34;1m\h\[\033[0m [\t] \[\033[37m\w\[\033[0m/ > '

# Jason's prompt
#PS1="[\t \h:\w] "
PS1="[\e[2;31m\t\e[m \e[2;36m\u\e[m\e[1;37m@\e[m\e[1;34m\h\e[m \e[2;32m\w\e[m]\n>> "

# Disable XOFF (ctrl+s) from Ruining Everything.
stty -ixon

# More user-friendly
#alias ll="ls -al --color=auto"
alias dirsize="du -sh"
#alias tdir="ll -t -r"

# AsiaPac Perl Critic and Perl Tidy
alias appc='perlcritic --profile /home/fonix/prd_progs/asiapac/tools/perlcriticrc'
alias appt='perltidy -b --pro=/home/fonix/prd_progs/asiapac/tools/perltidyrc'

# Turbo Check Plus for Uniframe systems
alias tcp='perl /home/fonix/prd_progs/tools/uniframe/utils/turbo_check_plus.pl'

# ReviewBoard
alias rb='/home/data/index/script/common/submit_review_board.pl'

alias emacs="emacs -rv"
alias lsd="ls -harlS"
alias rls="while true; do clear; rakelog summary; sleep 30; done"

# Perforce
export P4PORT="scm.factset.com:1666"
export P4CONFIG=".p4rc"
export P4DIFF="vimdiff"
export P4EDITOR="vim"
export P4USER="eledesma"
export EDITOR="vim"
alias p4not='find . -type f -print0 | xargs -0 p4 fstat'
alias p4all='find . -type f -print | p4 -x - add'

# Vundle on vim related
export PATH=/home/user/jabbatiello/usr/llvm/bin:$PATH
#export LD_LIBRARY_PATH="/home/user/jbenik/bin/python/lib:$LD_LIBRARY_PATH"
alias vim='LD_LIBRARY_PATH=/home/user/jbenik/bin/python/lib:$LD_LIBRARY_PATH /usr/bin/vim'

# Nodejs
export PATH="$PATH:/home/user/eledesma/bin/node-v6.11.1-linux-x64/bin"

# More user-friendly
alias perf="p4"
alias ll="ls -alh --color=auto"
alias ty="cat"
alias tdir="ll -t -r"
alias lo="logout"
alias cls="clear"
alias tt2="set term/inquire"
alias pct="perf client -o | tail"

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

# More dir navigation
alias data_dir="cd /home/fonix/data/risk/prod/"
alias prog_dir="cd /home/fonix/prd_progs/risk/"
alias log_dir="cd /home/fonix/prd_logs/jams/risk/"
if [[ $(show_logical sys_cluster_number) -eq 3 ]]; then
  alias scr_dir="cd /home/fonix/data2/risk/scratch/"
else
  alias scr_dir="cd /home/fonix/data/risk/scratch/"
fi

alias su_risk="sudo -u risk_mgr"
alias db_ops="sudo -u risk_mgr /home/fonix/prd_progs/tools/db_ops/db_ops.sh"
alias db_ops_riskprop='sudo -u riskprop_mgr /home/fonix/prd_progs/tools/db_ops/db_ops.sh'
alias db_ops_preserve="sudo -E -u risk_mgr /home/fonix/prd_progs/tools/db_ops/db_ops.sh"
alias slo='source /home/fonix/prd_progs/price/tools/logout.sh risk_mgr'
alias fdsa='/home/fonix/prd_progs/fdsa/nonprod/fdsa_server'

# jams shortcuts
alias jej='db_ops --cc=none jams extract job'
alias jes='db_ops --cc=none jams extract system'
alias jse='db_ops --cc=none jams show entry'
alias jsv='db_ops --cc=none jams show variable'

alias jejrp='db_ops_riskprop --cc=none jams extract job'
alias jesrp='db_ops_riskprop --cc=none jams extract system'
alias jserp='db_ops_riskprop --cc=none jams show entry'
alias jsvrp='db_ops_riskprop --cc=none jams show variable'

# quetex
alias qsh='quetex show | grep -in'

# To easily empty a file
alias empty='cat /dev/null >'


# To add date and time to your history
export HISTTIMEFORMAT="%d/%m/%y %T "

cat /home/user/eledesma/welcome_message.txt
