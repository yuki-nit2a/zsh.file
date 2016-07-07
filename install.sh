#!/usr/bin/env bash

set -eu

readonly INSTALL_TO=$1
readonly DOTFILE_DIR=$(cd $(dirname $BASH_SOURCE); pwd)/

symlink_files=(
    '.zshenv'
    '.zprofile'
    '.zshrc'
    '.zshlogin'
    '.zshlogout'
)

for symlink_file in ${symlink_files[@]}; do
    ln -s "${DOTFILE_DIR}${symlink_file}" "${INSTALL_TO}${symlink_file}"
done

cp -r "${DOTFILE_DIR}skeleton/.zsh/" "${INSTALL_TO}"

git clone 'https://github.com/zplug/zplug.git' "${INSTALL_TO}.zsh/zplug"
