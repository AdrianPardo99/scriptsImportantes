#!/usr/bin/env bash

echo "Script para compartir vimrc con neovim"

echo "set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc" > ~/.config/nvim/init.vim
