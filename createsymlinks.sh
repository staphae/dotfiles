#!/bin/bash
DOT_FILES=dotfiles
DIR_DOTFILES=~/$DOT_FILES
DIR_DOTFILES_OLD=~/dotfiles_old
mkdir -p ${DIR_DOTFILES_OLD}
#Files I want to create symlinks to 

files=$(ls ${DIR_DOTFILES})

for file in $files; do
   mv ~/.$file ${DIR_DOTFILES_OLD} &> /dev/null
   ln -s ${DIR_DOTFILES}/$file ~/.$file
done
