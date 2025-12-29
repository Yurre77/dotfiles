#
# ~/.bashrc
#

# Import git prompt
. ~/.git-prompt.sh

export PATH=$PATH:/home/yurre/.spicetify

# Constants
RESET='\[\033[0m\]'
BLACK='\[\033[30m\]'
RED='\[\033[31m\]'
GREEN='\[\033[32m\]'
YELLOW='\[\033[33m\]'
BLUE='\[\033[34m\]'
MAGENTA='\[\033[35m\]'
CYAN='\[\033[36m\]'
GRAYL='\[\033[37m\]'
GRAYD='\[\033[90m\]'
REDL='\[\033[91m\]'
GREENL='\[\033[92m\]'
YELLOWL='\[\033[93m\]'
BLUEL='\[\033[94m\]'
MAGENTAL='\[\033[95m\]'
CYANL='\[\033[96m\]'
WHITE='\[\033[97m\]'
BOLD='\[\033[1m\]'

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias suspend='systemctl suspend'
alias hibernate='systemctl hibernate'
alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'

# Bash prompt
if [ "`id -u`" -eq 0 ]; then
	PS1="[${RED}\u${RESET}@${CYAN}\H${RESET}] ${BLUE}󰉋 \w${MAGENTA}$(__git_ps1 ' (%s  )') \n${RESET}${BOLD}>${RESET} "
else
	PS1="[${GREEN}\u${RESET}@${CYAN}\H${RESET}] ${BLUE}󰉋 \w${MAGENTA}$(__git_ps1 ' (%s  )') \n${RESET}${BOLD}>${RESET} "
fi

# Misc. commands
fastfetch
