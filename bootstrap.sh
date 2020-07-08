#!/bin/bash


sudo apt instlal git
sudo apt install curl
sudo apt install wget
sudo apt-get install build-essential
sudo apt install python3
sudo apt install fzf
sudo apt install python3-pip
sudo apt install zsh
sudo apt install powerline fonts-powerline

git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


#zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting\
#zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions\


git clone https://github.com/abertsch/Menlo-for-Powerline.git
cd Menlo-for-Powerline
sudo mv "Menlo for Powerline.ttf" /usr/share/fonts
sudo fc-cache -vf /usr/share/fonts/
rm -rf Menlo-for-Powerline


curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash


sudo add-apt-repository ppa:christian-boxdoerfer/fsearch-daily\
sudo apt install fsearch





git clone https://github.com/knnan/dotfiles.git ~/Downloads/dotfiles
cd ~/Downloads/dotfiles
rsync -av --exclude "~/Downloads/dotfiles/.git" ~/Downloads/dotfiles ~
sudo reboot

