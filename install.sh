#!/bin/bash

export DEBIAN_FRONTEND=noninteractive
INSTALL_OPTIONS="-y"

apt update

# graphics and sound (consider stterm instead of konsole)
apt install ${INSTALL_OPTIONS} \
  xinit \
  i3 \
  konsole \
  pulseaudio \
  pavucontrol

# dev
apt install ${INSTALL_OPTIONS} \
  g++ \
  python3 \
  python3-dev

snap install \
  --classic cmake

# utils
apt install ${INSTALL_OPTIONS} \
  xclip \
  xinput \
  xserver-xorg-input-evdev

# apps
snap install \
  --classic firefox \
  --classic code \
  --classic telegram-desktop

# add fonts
# mkdir ~/.fonts
# wget "https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/JetBrainsMono/NoLigatures/Medium/complete/JetBrains Mono NL Medium Nerd Font Complete Mono.ttf" -o ~/.fonts/JetBrainsMediumMono


# setup terminal
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
