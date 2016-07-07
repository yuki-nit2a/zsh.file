#!/usr/bin/env zsh

zmodload zsh/zprof && zprof

DOTFILE_DIR=$(dirname $(readlink "${(%):-%N}"))/

zshrcs=(
    'env.zsh'
    'option.zsh'
    'mapping.zsh'
    'alias.zsh'
    'task.zsh'
    'playground.zsh'
)

for zshrc in $zshrcs; do
    src=${DOTFILE_DIR}.zshrc.d/${zshrc}

    #if [ $src -nt "${src}.zwc" ]; then
    #    echo "Compiling ${src}...\n"
    #    zcompile $src
    #fi

    source $src
done

if (which zprof > /dev/null) ;then
  #zprof
fi
