#!/usr/bin/bash


################################
### Add neovim unstable repo
sudo add-apt-repository ppa:neovim-ppa/unstable


################################
### Install NeoVIM && Plugins
sudo apt install -y neovim

### Make a neovim config directory
mkdir ~/.config
cp -r ./nvim ~/.config

nvim +PackerInstall +qall
nvim +PackerUpdate +qall
nvim +PackerSync +qall

nvim +PackerInstall +qall
nvim +PackerUpdate +qall
nvim +PackerSync +qall
