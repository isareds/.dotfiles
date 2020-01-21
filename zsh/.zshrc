## PROMPT='%(?.%F{green}√.%F{red}?%?)%f %B%F{240}%1~%f%b %# '
PROMPT='%B%F{154}%1~%f%b %F{142}→ %f '

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{240}(%b)%r%f'
zstyle ':vcs_info:*' enable git

## alias per replicare i comandi di listing di bash
alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

## load the same alias of bash due to the same syntax
source $HOME/.bash_aliases

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
