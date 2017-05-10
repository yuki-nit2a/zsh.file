###
## Define system global variable
#

## Encoding
export LANG='en_US.UTF-8'
export LC_ALL='en_US.UTF-8'

## Environment
export HOME=$HOME
export PATH=$PATH:/cygdrive/c/-/root/bin/
export PATH="$PATH:$(cygpath -pu "`reg query 'HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment' /v PATH| grep PATH | cut -c23-`")"

## Terminal
export CLICOLOR=true
export TERM=xterm-256color

## Application
export EDITOR=vim
export MANPAGER='less -X'

## Command
export LS_OPTIONS='--color=auto'
export LSCOLORS=gxfxcxdxbxegedabagacag
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
export ZLS_COLORS=$LS_COLORS

#export GREP_OPTIONS='--color=auto --binary-files=without-match --directories=recurse'
