source ~/.bash/colors
source ~/.bash/functions
source ~/.bash/aliases
source ~/.bash/todo-functions
source ~/.bash/git-functions
source ~/.bash/git-aliases
source ~/.bash/symfony-aliases
source ~/.bash/app-aliases
source ~/.bash/project-functions
source ~/.bash/homebrew-config
source ~/.bash/vlc-config
source ~/.bash/go-config
source ~/.bash/python-config

# wijs specific
source ~/.bash/wijs-functions

# ...
alias ls='ls -GF'
alias ll='ls -hlGFa'

# List all bash_stack files
alias bs=__open_bash_stack
__open_bash_stack(){
	sublime ~/Dotfiles/tilde/
	# sublime '.zshrc'
}

# Make it easy to access my projects
CSPROJECTROOT='/Volumes/Sites/' # trailing slash, please
alias csp=csproject

# Installed by 'brew install git'
source /usr/local/etc/bash_completion.d/git-completion.bash
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/tmux

# Enable autocomplete for aliases
complete -o default -o nospace -F _git g
complete -o default -o nospace -F _tmux t

ssh_load_autocomplete

GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_SHOWCOLORHINTS=1

# Last part of current working directory and the git branch we're in.
# Thanks @janmoesen for pointing me to the \[\] surrounding the non-printing
# chars.  These are necessary to prevent issues with command line editing,
# -browsing, -completion.
PROMPT_COMMAND='__git_ps1 "\[${REVERSE}\]\[${BLUE}\] \t \[${NORMAL}\]\[${BLUE}\] \W\[${NORMAL}\]" " "'
#PROMPT_COMMAND='__git_ps1 "\W\[${NORMAL}\]" " "'


# Path and environment vars.
PATH="~/bin:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:$PATH"
export EDITOR=vim

# Keep more of the command history
export HISTCONTROL=erasedups
export HISTFILESIZE=10000000
export HISTSIZE=1000000

# Vi mode
#set -o vi

#archey --color

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
