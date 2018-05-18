#!/bin/bash
if [[ ! -d ~/.config/nvim/colors/ ]]; then
	mkdir ~/.config/nvim/colors/
fi

if [[ ! -f ~/.bashrc ]]; then
	touch ~/.bashrc
fi

dpkg -s git &> /dev/null
if [ $? -eq 0 ]; then
    echo "Git is installed!"
else
	sudo apt install git
fi

if [[ ! -d ~/.config/nvim/bundle ]]; then
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.config/nvim/bundle/Vundle.vim
fi

ln -sf ~/dotfiles/molokai.vim ~/.config/nvim/colors/molokai.vim
ln -sf ~/dotfiles/vimrc.main ~/.config/nvim/init.vim
ln -sf ~/dotfiles/tmuxConfig.main ~/.tmux.conf
ln -sf ~/dotfiles/bashrc.main ~/.bashrc

source ~/.bashrc
