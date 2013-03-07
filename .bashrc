
source ~/.bash/functions
source ~/.bash/aliases

# git auto completion
if [ -f ~/.git-completion.bash ]; then
    source ~/.git-completion.bash
    # otherwise the 'g' alias won't autocomplete.
    complete -o default -o nospace -F _git g
fi

ssh_load_autocomplete


#export PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}\007"'
# Last part of current working directory and the git branch we're in.
PS1='[\W$(git_branch)] '

# Path and environment vars.
PATH="/usr/local/bin/:/usr/local/mysql/bin:$PATH"
export EDITOR=vim

# Keep more of the command history
export HISTCONTROL=erasedups
export HISTFILESIZE=10000000
export HISTSIZE=1000000

# Vi mode
#set -o vi

