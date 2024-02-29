#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
pushd $SCRIPT_DIR
ln -sf $PWD/../zshrc $HOME/.zshrc
ln -sf $PWD/../xinitrc $HOME/.xinitrc
ln -sf $PWD/../Xmodmap $HOME/.Xmodmap
ln -sf $PWD/../i3/ $HOME/.config
ln -sf $PWD/../rofi/ $HOME/.config
popd
