# bash/zsh completion support for local projects folder.

complete -F __list_projects csp

__list_projects(){
    local cur=${COMP_WORDS[COMP_CWORD]}
    COMPREPLY=( $(compgen -W "$(ls ${CSPROJECTROOT})" -- $cur) )
}
