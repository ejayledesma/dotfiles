# Set up an awesome prompt
# Git branch function
function parse_git_branch() {
  git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/%F{yellow}(\1)%f/p'
}

autoload -Uz colors
colors

setopt PROMPT_SUBST

# Colorful prompt
export PROMPT='%F{green}%n%f%F{white}@%f%F{blue}%m%f:%F{green}%~%f $(parse_git_branch) %# '


# More user-friendly
alias ll="ls -alh --color=auto"
alias ty="cat"
alias tdir="ll -t -r"
alias cls="clear"

# Directory navigation
alias ..="cd .."
alias ..2="cd ../.."
alias ..3="cd ../../.."
alias ..4="cd ../../../.."
alias ..5="cd ../../../../.."
alias cd..='cd ..'

# To easily empty a file
alias empty='cat /dev/null >'



export PATH="/opt/homebrew/bin:$PATH"
