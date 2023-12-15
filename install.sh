#!/bin/sh

# Updates
sudo apt update
sudo apt upgrade -y

# Packages
sudo apt install wget curl firefox gedit* vim tmux w3m htop filezilla arandr google-chrome-stable vlc terminator openssh-server python3 python3-pip python3-virtualenv i3 zathura sxiv pandoc tree mlocate lm-sensors thunderbird chromium-browser qbittorrent keepassxc gufw git htop psensor usb-creator-gtk -y

# Setting up Python and PIP
pip3 install numpy pandas selenium

# .bash_aliases
echo 'alias ..="cd .."' >> ~/.bashrc
echo 'alias lt="ls -alt"' >> ~/.bashrc
echo 'alias nvidia="watch -n 1 nvidia-smi"' >> ~/.bashrc
echo 'alias sensors="watch -n 1 sensors"' >> ~/.bashrc
echo 'alias up="sudo apt update && sudo apt upgrade && sudo apt autoremove"' >> ~/.bashrc
echo 'alias trim="sudo fstrim / -v"' >> ~/.bashrc

# Discord
wget -O discord.deb https://discord.com/api/download?platform=linux&format=deb
sudo dpkg -i discord.deb
sudo apt-get -f install
sudo dpkg -i discord.deb

# Teams
wget -O teams.deb https://go.microsoft.com/fwlink/p/?LinkID=2112886&clcid=0x816&culture=pt-pt&country=PT
sudo dpkg -i teams.deb
sudo apt-get -f install
sudo dpkg -i teams.deb


# Zoom for Ubuntu 16.04+
wget -O zoom.deb https://zoom.us/client/latest/zoom_amd64.deb
sudo dpkg -i zoom.deb
sudo apt-get -f install
sudo dpkg -i zoom.deb

# VScode
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get install apt-transport-https -y
sudo apt-get update
sudo apt-get install code -y

# RustDesk
wget -O rustDesk.deb https://github.com/rustdesk/rustdesk/releases/download/1.2.3/rustdesk-1.2.3-x86_64.deb
sudo dpkg -i rustDesk.deb
sudo apt-get -f install
sudo dpkg -i rustDesk.deb

# Remove downloaded files
rm discord.deb zoom.deb rustDesk.deb

# Vim Config
echo "syntax enable
set rnu nu
set ts=4
set expandtab
set shiftwidth=4
set cursorline
set showmatch
let python_highlight_all = 1
nnoremap ç <Esc>
vnoremap ç <Esc>
inoremap ç <Esc>
" > ~/.vimrc

# Adds git user and email (change to your email and username)
git config --global user.email email@git
git config --global user.name username


# Finishing tasks
sudo apt update
sudo apt upgrade -y
sudo updatedb
sudo reboot
