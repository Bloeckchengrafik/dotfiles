#!/bin/bash
set -e

# Pull in my public key
curl https://bloeckchengrafik.de/keys/ChristianBergschneider_0x5FA28D3E_public.asc | gpg --import

# Configure git client
git config --global init.defaultBranch main
git config --global user.signingkey F2212F875BB389BB762172E23991F97F5FA28D3E
git config --global user.name "Christian Bergschneider"
git config --global user.email "christian.bergschneider@gmx.de"
git config --global commit.gpgsign true 
