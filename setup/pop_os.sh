#!/bin/bash
RED='\033[0;31m'
GREEN='\033[0;32m'
CYAN='\033[0;36m'
YELLOW='\033[0;33m'
NC='\033[0m'

printf "${GREEN}--- updateing system${NC}\n"
sudo apt update
sudo apt upgrade

printf "\n${GREEN}--- updated system${NC}\n"

printf "\n${CYAN}--- install zsh and oh-my-zsh?${NC}\t"
read do_zsh

printf "\n${CYAN}--- install base16?${NC}\t"
read do_base16

printf "\n${CYAN}--- install default software?${NC}\t"
read do_default_software

printf "\n${CYAN}--- install js stack?${NC}\t"
read do_js_stack



if [[ $do_default_software == y* ]]; then 
  printf "\n${YELLOW}--- executing default software${NC}\n"
  sudo apt install --assume-yes xclip
  sudo apt install --assume-yes stow
  sudo apt install --assume-yes tmux 
  sudo apt install --assume-yes fzf
  sudo apt install --assume-yes ranger
  sudo apt install --assume-yes tig
  flatpak install flathub com.vscodium.codium
  flatpak install flathub com.spotify.Client
  flatpak install flathub org.telegram.desktop
  printf "\n${GREEN}--- installed default software${NC}\n"
fi

if [[ $do_zsh == y* ]]; then 
  printf "\n${YELLOW}--- installing zsh${NC}\n"
  sudo apt install zsh
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  printf "\n${GREEN}--- installed zsh${NC}\n"
fi

if [[ $do_base16 == y* ]]; then 
  printf "\n${YELLOW}--- installing base16${NC}\n"
  git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
  printf "\n${GREEN}--- installed base16${NC}\n"
fi

if [[ $do_js_stack == y* ]]; then 
  printf "\n${YELLOW}--- executing js stack${NC}\n"
  sudo apt install --assume-yes nodejs
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.36.0/install.sh | bash
  printf "\n${GREEN}--- installed js stack${NC}\n"
fi

