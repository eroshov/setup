#!/bin/bash

export DEBIAN_FRONTEND=noninteractive
INSTALL_OPTIONS="-y"

apt update

apt install ${INSTALL_OPTIONS} zsh

# oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# zsh syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

# p10k
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k # p10k configure -- to configure

# ~/.zshrc plugins=(git zsh-syntax-highlighting)
# ~/.zshrc ZSH_THEME="powerlevel10k/powerlevel10k"
# ~/.zshrc POWERLEVEL9K_MODE="nerdfont-complete"

#chsh -s /bin/zsh # set zsh default
#cp .p10k.zsh ~/.p10k.zsh
#cp .zshrc ~/.zshrc
#source .zshrc
