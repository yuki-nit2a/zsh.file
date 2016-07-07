###
## Keybind
#

bindkey -d
bindkey -v

## Mode
bindkey -M vicmd 's' execute-named-cmd

## Cursor Move
bindkey -M viins '^h' backward-char
bindkey -M viins '^l' forward-char

bindkey -M viins '^[[1~' beginning-of-line
bindkey -M vicmd '^[[1~' beginning-of-line
bindkey -M viins '^[[4~' end-of-line
bindkey -M vicmd '^[[4~' end-of-line

## Undo/Redo
bindkey -M viins '^r' redo

## Edit
bindkey -M viins '^a'    vi-backward-delete-char
bindkey -M viins '^?'    vi-backward-delete-char
bindkey -M vicmd '^?'    vi-backward-delete-char
bindkey -M viins '^x'    vi-delete-char
bindkey -M viins '^[[3~' vi-delete-char
bindkey -M vicmd '^[[3~' vi-delete-char

bindkey -M viins '^Q' kill-word

## Register
bindkey -M viins '^y' vi-yank-whole-line

## History
bindkey -M viins '^k'   history-beginning-search-backward-end
bindkey -M vicmd '^[[a' history-beginning-search-backward-end
bindkey -M viins '^j'   history-beginning-search-forward-end
bindkey -M vicmd '^[[b' history-beginning-search-forward-end

bindkey -M viins '^F' history-incremental-pattern-search-backward
bindkey -M viins '^B' history-incremental-pattern-search-forward

## Screen
bindkey -M viins '^L' clear-screen

## Directory
function cd-up() {
   echo
   cd ..
   zle reset-prompt
}
zle -N cd-up
bindkey -M viins '^u' cd-up
bindkey -M vicmd '^u' cd-up

## Completion
bindkey -M viins '^n' menu-complete
bindkey -M vicmd '^n' menu-complete
bindkey -M viins '^I' menu-complete
bindkey -M vicmd '^I' menu-complete
bindkey -M viins '^p' reverse-menu-complete
bindkey -M vicmd '^p' reverse-menu-complete

bindkey -M viins '^b' insert-last-word
