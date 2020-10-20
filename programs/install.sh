#!/bin/bash

## start configuration
sudo apt update
sudo apt --fix-broken install  apt-transport-https ca-certificates curl software-properties-common snapd

## CHROME
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -P ~/Downloads
sudo dpkg -i ~/Downloads/google-chrome-stable_current_amd64.deb
sudo apt-get install -f

## BLENDER
sudo snap install blender --classic

## VS CODE
sudo snap install code --classic


## SLACK
sudo snap install slack --classic

## TELEGRAM
sudo snap install telegram-desktop


## DOCKER
sudo snap install docker

## sublime
sudo snap install sublime-text --classic

## postman
sudo snap install postman

## heroku site manager
sudo snap install heroku --classic

## vim
sudo apt install neovim
sudo apt remove vim

## zsh
sudo apt install zsh

## git hub cli
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
sudo apt-add-repository https://cli.github.com/packages
sudo apt update
sudo apt install gh

## remove unecessary package
sudo apt autoremove
