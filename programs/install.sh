#!/bin/bash

## start configuration
sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common snapd

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
sudo snap install docker

## sublime
sudo snap install sublime-text --classic

## postman
sudo snap install postman

## vim
sudo apt install neovim
