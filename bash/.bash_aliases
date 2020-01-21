# my alias
alias bb='cd ..'
alias ee='exit'

# Docker alias
alias dc='docker-compose'
alias dcu='dc up -d && dc ps'
alias dcs='dc stop'
alias dcd='dc down'
alias dcl='dc logs -f'
alias dcr='dc restart'
alias dcsa='docker stop $(docker ps -a -q)'
alias dce='dc exec'


# autojump
alias j='autojump'
