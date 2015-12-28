if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi

source ~/.bash/startup

# on startup shell do
startup

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
