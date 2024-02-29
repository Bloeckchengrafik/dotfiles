#!/bin/bash

if ! command -v yay &> /dev/null
then
	echo "[+] installing yay"
	pacman -S --needed git base-devel
	git clone https://aur.archlinux.org/yay.git
	cd yay
	makepkg -si
	cd ..
	rm -rf yay
fi

yay -S zsh thefuck openssh --needed
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "zsh;exit" >> $HOME/.bashrc
