if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi

source ~/.bash/startup

# on startup shell do
startup

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# PATH
# Consider refactoring bashrc to remove all PATH.
# PATH=~/.composer/vendor/bin:$PATH

alias composer="php -n $(cat $(which composer) | grep composer.phar | awk '{print $7}')"
