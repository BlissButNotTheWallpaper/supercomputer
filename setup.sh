#!/bin/bash

#install all packages required

packages=("i3" "rofi" "tmux" "vim" "fzf" "cherrytree" "flameshot" "tlp" "fd-find")

printf "Updating ...\n"
sudo apt update

for package in "${packages[@]}"; do 
	echo "Installing $package ..."
	sudo apt install -y "$package"
done

# move all the config files to the desired directory

# lets make all the needed dirs in $HOME/.config/

dotconf_dirs=("i3" "rofi" "tmux" "i3status")

for dotconf_dir in "${dotconf_dirs[@]}"; do
	echo "making dir ~/.config/$dotconf_dir ..."
	mkdir -p "$HOME/.config/$dotconf_dir"
done

# set up i3
echo "setting up i3 ..."
mv $HOME/supercomputer/i3/config $HOME/.config/i3/
echo "setting up i3status ..."
mv $HOME/supercomputer/i3/i3status.conf $HOME/.config/i3status/

# set up rofi
echo "setting up rofi ..."
mv $HOME/supercomputer/rofi/config.rasi $HOME/.config/rofi/

# set up tmux
echo "setting up tmux ..."

#root tmux setup
sudo mkdir -p /root/.config/tmux/
sudo mv $HOME/supercomputer/tmux/root_tmux.conf /root/.config/tmux/tmux.conf

mv $HOME/supercomputer/tmux/tmux.conf $HOME/.config/tmux/
mv $HOME/supercomputer/tmux/fzf_cd.sh $HOME/.config/tmux/
mv $HOME/supercomputer/tmux/fzf_vim.sh $HOME/.config/tmux/

# set up vim 
echo "setting up vim ..." 

# vim root setup 
sudo mv $HOME/supercomputer/vim/root_vimrc /root/.vimrc

mv $HOME/supercomputer/vim/vimrc $HOME/.vimrc

# set up screen-scale
echo "setting up scale display ..."
sudo mv $HOME/supercomputer/screen-scale/90dpi /etc/X11/Xsession.d/

echo "making .local/bin"
mkdir -p $HOME/.local/bin
mkdir -p $HOME/.local/share

# set up bashrc
echo "setting up bashrc ..."

# set up root bashrc
sudo mv $HOME/supercomputer/bash/root_bashrc /root/.bashrc

mv $HOME/supercomputer/bash/bashrc $HOME/.bashrc

# make dev dir in home

mkdir -p $HOME/dev
mkdir -p $HOME/hax
mkdir -p $HOME/targets

mkdir -p $HOME/Downloads/appimages
mkdir -p $HOME/Downloads/certs
mkdir -p $HOME/Downloads/tmp

mkdir -p $HOME/Documents/cherry
mkdir -p $HOME/Documents/todo




