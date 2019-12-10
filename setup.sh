#!/bin/bash

echo "This files will be overwritten:"
ls ~/.dotfiles -LRa -I.git

select yn in "Yes" "No"; do
    case $yn in
        Yes )
		ln -sfv ~/.dotfiles/git/.gitconfig ~;
		ln -svf ~/.dotfiles/vim/.vimrc ~;
		ln -svf ~/.dotfiles/bash/.bash_profile ~;
		source ~/.bashrc
		break;;
        No ) exit;;
    esac
done
