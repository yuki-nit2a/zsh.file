###
## General
#

## Directory
setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups
unsetopt cdable_vars
unsetopt chase_links
unsetopt chase_dots

## Flow
setopt no_flow_control

## Error
setopt no_beep

## Login/Logout
watch='all'
log

setopt ignore_eof

## Encoding
setopt print_eight_bit
setopt COMBINING_CHARS

## Comment
setopt interactive_comments

## Job
setopt long_list_jobs

## Statistics
export REPORTTIME=3

## Statement
setopt brace_ccl

## rm
setopt RM_STAR_WAIT
unsetopt RM_STAR_SILENT

###
## Prompt
#

setopt prompt_subst
setopt prompt_percent
unsetopt prompt_sp
unsetopt prompt_cr
unsetopt transient_rprompt

###
## History
#

HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

setopt extended_history
setopt inc_append_history
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt hist_save_no_dups
setopt hist_verify
setopt append_history
setopt share_history

## Directory
autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
add-zsh-hook chpwd chpwd_recent_dirs
 
zstyle ':chpwd:*' recent-dirs-max 1000
zstyle ':chpwd:*' recent-dirs-default true
zstyle ':chpwd:*' recent-dirs-pushd true
zstyle ':chpwd:*' recent-dirs-file ~/.zsh/cache/chpwd_recent_dirs/history

###
## Input support
#

WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'
LISTMAX=10000

## Completion
setopt correct
unsetopt correct_all
unsetopt dvorak
setopt magic_equal_subst
setopt complete_in_word
unsetopt complete_aliases
setopt mark_dirs
setopt always_to_end
setopt always_last_prompt
setopt auto_param_slash
setopt no_auto_remove_slash

## History
setopt hist_expand

## Glob
setopt glob
setopt glob_complete
setopt extended_glob
setopt globdots
setopt no_nomatch
unsetopt caseglob
setopt numeric_glob_sort

## compinit
autoload -Uz compinit
chmod 770 ~/.zcompdump
chgrp -R Users ~/.zcompdump
compinit -u

setopt auto_list
setopt auto_menu
setopt auto_param_keys
setopt list_packed
setopt list_rows_first
setopt list_types
setopt rec_exact

zstyle ':completion:*' use-cache yes
zstyle ':completion:*' cache-path ~/.zsh/cache/compinit

zstyle ':completion:*' completer \
    _complete \
    _match \
    _expand \
    _prefix
    #_list \
    #_approximate \
    #_oldlist \
    #_history \
    #_ignored \
zstyle ':completion:*' keep-prefix
zstyle ':completion:*' list-separator '->'
zstyle ':completion:*:default' menu select=2

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' format '%B%F{blue}%d%f%b'
zstyle ':completion:*' group-name ''

zstyle ':completion:*:*:-subscript-:*' tag-order indexes parameters

cdpath=(
)
zstyle ':completion:*:cd:*' tag-order local-directories path-directories
zstyle ':completion:*:cd:*' ignore-parents parent pwd

zstyle ':completion:*' verbose no
zstyle ':completion:*:options' description yes

zstyle ':completion:sudo:*' environ PATH="$SUDO_PATH:$PATH"

zstyle ':completion:*' recent-dirs-insert both

## history-search-end
autoload history-search-end

zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end

## smart-insert-last-word
autoload smart-insert-last-word
zle -N insert-last-word smart-insert-last-word

###
## Theme
#

autoload -Uz colors
colors

###
## zplug
#

export ZPLUG_HOME="${HOME}/.zsh/zplug"

source "${ZPLUG_HOME}/init.zsh"

#zplug 'zsh-users/zsh-completions'
#zplug 'zsh-users/zsh-syntax-highlighting', nice:10
zplug 'supercrabtree/k'
zplug 'arzzen/calc.plugin.zsh'
zplug 'bobthecow/git-flow-completion'

###
## olivierverdier/zsh-git-prompt
#

zplug 'olivierverdier/zsh-git-prompt', \
    use:zshrc.sh

###
## djui/alias-tips
#

zplug 'djui/alias-tips'

export ZSH_PLUGINS_ALIAS_TIPS_TEXT='alias: '
export ZSH_PLUGINS_ALIAS_TIPS_EXCLUDES=''
export ZSH_PLUGINS_ALIAS_TIPS_EXPAND=1

###
##
#
#if ! zplug check --verbose; then
#    zplug install
#fi

zplug load --verbose
