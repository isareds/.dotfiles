#!/bin/bash

## start configuration
sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common snapd xdg-open-snapd

## CHROME
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

## BLENDER
sudo snap install blender --classic

## VS CODE
sudo snap install code --classic

## SKYPE
sudo snap install skype

## SLACK
sudo snap install slack

## TELEGRAM
sudo snap install telegram-desktop

## DATAGRIP
sudo snap install datagrip --classic

## DOCKER
sudo apt-get remove docker docker-engine docker.io
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add –
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu  $(lsb_release -cs)  stable"
sudo apt-get update
sudo apt-get install docker-ce

## sublime
sudo snap install sublime-text --classic

## postman
sudo snap install postman

## vim
sudo apt insall neovim
