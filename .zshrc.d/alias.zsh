###
## Register basic system command alias
#

## ls
alias l='ls'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'

## rm
alias rm='safe-rm -i'

## cp
alias cp='cp -i'

## mv
alias mv='mv -i'

## sudo
alias sudo='sudo '

## pushd/popd
alias ss='pushd'
alias pp='popd'

## tmux
alias t='tmux'

###
## Register global alias
#

## pipe
alias -g G='| grep'
alias -g H='| head'
alias -g L='| less'
alias -g T='| tail'

## path
alias -g ...='../../'
alias -g ....='../../../'
alias -g .....='../../../../'
alias -g ......='../../../../../'
alias -g .......='../../../../../../'

###
## Register zsh alias
#

alias zshrc-reload='source ~/.zshrc'

###
## Register development command alias
#

## git
alias g='git'
