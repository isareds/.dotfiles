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

## SKYPE
sudo snap install skype --classic

## SLACK
sudo snap install slack --classic

## TELEGRAM
sudo snap install telegram-desktop

## DATAGRIP
sudo snap install datagrip --classic

## DOCKER
sudo snap install docker

## sublime
sudo snap install sublime-text --classic

## postman
sudo snap install postman

## client mail
sudo snap install mailspring

## heroku site manager
sudo snap install heroku --classic

## vim
sudo apt install neovim
sudo apt remove vim

## zsh
sudo apt install zsh

## remove unecessary package
sudo apt autoremove
