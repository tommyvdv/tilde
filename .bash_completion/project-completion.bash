# bash/zsh completion support for local projects folder.

complete -F __list_projects csp

__list_projects(){
    local cur=${COMP_WORDS[COMP_CWORD]}
    COMPREPLY=( $(compgen -W "$(ls ${CSPROJECTROOT})" -- $cur) )
}

# bash/zsh completion support for hosts inside hosts file.

complete -F __list_hosts hostess

__list_hosts() {
	local cur=${COMP_WORDS[COMP_CWORD]}
	COMPREPLY=( $(compgen -W "$(hostess list | awk '{print $1}')" -- $cur) )
}
