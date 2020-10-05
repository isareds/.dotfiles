# load function section
if [ -f ~/.dotfiles/bash/.function ] && ! shopt -oq posix; then
    . ~/.dotfiles/bash/.function
fi

#for al in $(git --list-cmds=alias); do
#    alias g$al="git $al"

#    complete_func=_git_$(__git_aliased_command $al)
#    function_exists $complete_fnc && __git_complete g$al $complete_func
#done

# load alias
if [ -f ~/.dotfiles/bash/.bash_aliases ] && ! shopt -oq posix; then
    . ~/.dotfiles/bash/.bash_aliases
fi

# load command
if [ -f ~/.dotfiles/bash/.command ] && ! shopt -oq posix; then
    . ~/.dotfiles/bash/.command
fi

#load prompt
if [ -f ~/.dotfiles/bash/.prompt ] && ! shopt -oq posix; then
    . ~/.dotfiles/bash/.prompt
fi

if [ -d "$HOME/.cargo/bin" ] ; then
  PATH="$PATH:$HOME/.cargo/bin"
fi

source /home/ragnarok/.config/broot/launcher/bash/br

export SHELL=/bin/bash
export EDITOR=nvim

# direnv test
eval "$(direnv hook bash)"
