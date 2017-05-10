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
chmod -R 755 "${INSTALL_TO}.zsh/zplug"

# Get old zplug version
# so, latest of master branch doesn't work for me on 2017/05/11.
cd "${INSTALL_TO}.zsh/zplug"
git checkout 41e0b492ba2d492cb5cd83cca0902252902705a8
