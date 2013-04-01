source ~/.bash/colors
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
PS1='\[${GREEN}\][\W\[${BLUE}\]$(git_branch)\[${GREEN}\]]\[${NORMAL}\] '

# Path and environment vars.
PATH="~/bin:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:$PATH"
export EDITOR=vim

# Keep more of the command history
export HISTCONTROL=erasedups
export HISTFILESIZE=10000000
export HISTSIZE=1000000

# Vi mode
#set -o vi

