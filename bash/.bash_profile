# load function section
if [ -f ~/.dotfiles/bash/.function] && ! shopt -oq posix; then
	. ~/.dotfiles/bash/.function
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
if [ -f ~/.dotfiles/bash/.bash_aliases] && ! shopt -oq posix; then
	. ~/.dotfiles/bash/.bash_aliases
fi


# load command
if [ -f ~/.dotfiles/bash/.command] && ! shopt -oq posix; then
    . ~/.dotfiles/bash/.command
fi


#load prompt

if [ -f ~/.dotfiles/bash/.promp] && ! shopt -oq posix; then
    . ~/.dotfiles/bash/.prompt
fi

