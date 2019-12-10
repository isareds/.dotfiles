# load function section
if [ -f .function] && ! shopt -oq posix; then
	source .function
fi


# Git alias
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
    . /usr/share/bash-completion/completions/git
fi

for al in `git --list-cmds=alias`; do
    alias g$al="git $al"

    complete_func=_git_$(__git_aliased_command $al)
    function_exists $complete_fnc && __git_complete g$al $complete_func
done

# load alias
if [ -f .bash_aliases] && ! shopt -oq posix; then
	source .bash_aliases
fi


# load command
if [ -f .command] && ! shopt -oq posix; then
        source .command
fi


#load prompt

if [ -f .promp] && ! shopt -oq posix; then
        source .prompt
fi

