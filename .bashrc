BLACK=$(tput setaf 0)
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
LIME_YELLOW=$(tput setaf 190)
POWDER_BLUE=$(tput setaf 153)
BLUE=$(tput setaf 4)
MAGENTA=$(tput setaf 5)
CYAN=$(tput setaf 6)
WHITE=$(tput setaf 7)
BRIGHT=$(tput bold)
NORMAL=$(tput sgr0)
BLINK=$(tput blink)
REVERSE=$(tput smso)
UNDERLINE=$(tput smul)

source ~/.bash/functions
source ~/.bash/aliases

# git auto completion
if [ -f ~/.git-completion.bash ]; then
    source ~/.git-completion.bash
    # otherwise the 'g' alias won't autocomplete.
    complete -o default -o nospace -F _git g
fi

ssh_load_autocomplete

# Last part of current working directory and the git branch we're in.
# Thanks @janmoesen for pointing me to the \[\] surrounding the non-printing chars.
PS1='\[${LIME_YELLOW}\][\W\[${POWDER_BLUE}\]$(git_branch)\[${LIME_YELLOW}\]]\[${NORMAL}\] '

# Path and environment vars.
PATH="/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:$PATH"
export EDITOR=vim

# Keep more of the command history
export HISTCONTROL=erasedups
export HISTFILESIZE=10000000
export HISTSIZE=1000000

# Vi mode
#set -o vi

