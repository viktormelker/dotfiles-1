#!/bin/bash
set -e

# Setup file for arch linux based distros

sudo pacman -s stow

# handle keys
sudo pacman-key --init
sudo pacman-key --populate archlinux
sudo pacman-key --refresh-keys

# Configure fastest mirrors
sudo pacman-mirrors --fasttrack 10 && sudo pacman -Syyu

# update all installed packages
sudo pacman -Syu

# zsh
sudo pacman -S manjaro-zsh-config powerline zsh-completions zsh-history-substring-search zsh-syntax-highlighting
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# installing non standard packages
sudo pacman -S yay

#
sudo pacman -S bash-completion

sudo pacman -S chromium

# For development
yay visual-studio-code-bin
sudo pacman -S docker-compose
sudo pacman -S docker
# add user to docker group
sudo gpasswd -a viktor docker
# start docker daemon on boot
sudo systemctl enable docker.service

# important developer stuff
sudo pacman -S vim jq tree
sudo pacman -S powerline-fonts
sudo pacman -S httpie
sudo pacman -S tmux
sudo pacman -S ctags
sudo pacman -S npm
sudo pacman -S zip
sudo pacman -S alacritty
sudo pacman -S hub
sudo pacman -S xsel
sudo pacman -S kscreen
yay -S direnv
sudo pacman -S cmake
sudo pacman -S bind
sudo pacman -S gopass
sudo pacman -S keychain

echo 'xrdb -merge ~/.Xresources' >> ~/.xinitrc

# Cloud development
yay -S google-cloud-sdk

# AWS stuff
yay -S aws-cli-v2-bin
yay -S aws-vault
npm install -g aws-cdk

# communication
yay -S franz
yay -S slack-desktop
yay -S discord
# Nice tools
sudo pacman -S peek flameshot
sudo pacman -S graphviz
sudo pacman -S tig
sudo pacman -S rustup
rustup install stable
rustup default stable
cargo install du-dust
sudo pacman -S okular
sudo pacman -S lsd
sudo pacman -S xclip
yay -S nerd-fonts-complete
sudo pacman -S tldr
sudo pacman -S ranger
yay -S spotify

# bluetooth
sudo pacman -S bluez-utils pulseaudio-bluetooth blueman

# Yubikey stuff
sudo pacman -S yubikey-manager-qt
sudo pacman -S yubikey-manager
sudo pacman -S yubico-pam
sudo pacman -S libu2f-host
sudo pacman -S libfido2
yay -S yubioath-desktop
yay -S acsccid
sudo systemctl enable pcscd.service
sudo systemctl start pcscd.service


# i3 stuff
sudo pacman -S i3-vm i3status-manjaro dmenu-manjaro
sudo pacman -S i3-wallpapers i3lock pcmanfm network-manager-applet
sudo pacman -S feh rofi py3status xautolock conky xorg-xbacklight
sudo pacman -S pulseaudio pavucontrol dunst perl-anyevent-i3
yay -S alttab-git

# Optional development stuff
# Tools
sudo pacman -S rclone
yay -S postman

# for kubernetes
yay -S minikube kubectl k9s

# poetry
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python

# For flutter
yay -S flutter vysor
sudo pacman -S dart

# for circuitpython
yay -S mu-editor bossa

# for javascript development
sudo pacman -S yarn

# for arm programmer
yay -S jlink
sudo pacman -S arm-none-eabi-gcc arm-none-eabi-newlib

# Instead of docker
sudo pacman -S podman

# for some openai envs
sudo pacman -S swig

# Databases
yay -S neo4j-community
sudo pacman -S redis
sudo pacman -S postgresql
sudo pacman -S mariadb

sudo pacman -S terraform
sudo pacman -S kustomize
