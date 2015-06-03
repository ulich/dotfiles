#!/bin/bash
############################
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles (copied from prezto)
# Usage: source makesymlinks.sh
############################

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.dotfiles/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

