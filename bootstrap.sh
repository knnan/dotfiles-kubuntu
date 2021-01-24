#!/bin/bash






sudo apt update -y;
sudo apt upgrade -y;

sudo apt instlal git
sudo apt install curl
sudo apt install wget
sudo apt instal net-tools
sudo apt-get install build-essential
sudo apt install python3
sudo apt install python3-pip
sudo apt install fzf
sudo apt install zsh
sudo apt install powerline fonts-powerline
#oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#powerlevel9k
git clone https://github.com/bhilburn/powerlevel9k.git "$HOME"/.oh-my-zsh/custom/themes/powerlevel9k



#zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting\
#zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions\

#Install Menlo for Powerline font
git clone https://github.com/abertsch/Menlo-for-Powerline.git
cd Menlo-for-Powerline
sudo mv "Menlo for Powerline.ttf" /usr/share/fonts
sudo fc-cache -vf /usr/share/fonts/
rm -rf Menlo-for-Powerline

#install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

#install fsearch
sudo add-apt-repository ppa:christian-boxdoerfer/fsearch-daily\
sudo apt install fsearch
















git clone https://github.com/knnan/dotfiles.git ~/Downloads/dotfiles
cd ~/Downloads/dotfiles
rsync -av --exclude "~/Downloads/dotfiles/.git" . ~
sudo reboot

